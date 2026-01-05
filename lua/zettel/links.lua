local M = {}

-- Find markdown or wiki link under cursor
local function get_link_under_cursor()
  local line = vim.api.nvim_get_current_line()
  local col = vim.api.nvim_win_get_cursor(0)[2] + 1

  -- [[wiki links]]
  for start, id in line:gmatch("()%[%[([^%]]+)%]%]") do
    local finish = start + #id + 3
    if col >= start and col <= finish then
      return { type = "wiki", target = id }
    end
  end

  -- [text](file.md)
  for start, _, link in line:gmatch("()%[([^%]]+)%]%(([^%)]+)%)") do
    local finish = start + #link + 3
    if col >= start and col <= finish then
      return { type = "md", target = link }
    end
  end
end

-- Resolve link → filename
local function resolve_target(link)
  if link.type == "wiki" then
    return link.target .. ".md"
  end
  return link.target
end

function M.follow()
  local link = get_link_under_cursor()
  if not link then
    vim.notify("No link under cursor", vim.log.levels.WARN)
    return
  end

  local file = resolve_target(link)

  -- Push tagstack entry so <C-t> works
  vim.fn.settagstack(vim.fn.win_getid(), {
    items = {
      {
        tagname = file,
        from = vim.fn.getpos("."),
      },
    },
    curidx = 1,
  }, "t")

  local base_dir = vim.fn.expand("%:p:h")
  local path = base_dir .. "/" .. file
  vim.cmd("edit " .. vim.fn.fnameescape(path))
end

return M

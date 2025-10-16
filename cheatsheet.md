# Lazyvim cheatsheet

<!--toc:start-->
- [Lazyvim cheatsheet](#lazyvim-cheatsheet)
  - [Buffer navigation](#buffer-navigation)
  - [Opening files](#opening-files)
  - [Debug](#debug)
  - [LSP](#lsp)
  - [Quotes and special characters](#quotes-and-special-characters)
  - [Code formatting](#code-formatting)
  - [Refactoring](#refactoring)
<!--toc:end-->

## General

- normal `<leader>:` Command history
- normal `<leader>s"` search registers  (select to put into `+` register and then past with `p`)
- normal `<leader>sq` quickfix list

## Buffer navigation

- normal `<S-h>` previous buffer
- normal `<S-l>` next buffer
- normal `[b` prev buffer
- normal `]b` next buffer
- normal `[B` move buffer prev
- normal `]B` move buffer next

## Opening files

- normal `<leader>ff` / normal `<leader><space>` search file by name
- normal `<leader>sg` live grep (simpler than full text search)
- normal `<leader>sr` full text search and replace
- normal `<leader>,` / normal `<leader>fb` buffers

## Debug

- normal `<leader>da` attach to debugger/continue
- normal `<leader>dc` continue
- normal `<leader>db` toggle breakpoint
- normal `<leader>dB` set conditional breakpoint
- normal `<leader>dt` terminate debugging
- normal `<leader>di` step into
- normal `<leader>do` step over
- normal `<leader>dO` step out
- normal `<leader>dC` run to cursor
- normal `<leader>dp` pause
- normal `<leader>dr` toggle repl
- normal `<leader>de` evaluate expression
- normal `<leader>dj` down in stack trace
- normal `<leader>dk` up in stack trace

## TODO comments

- normal `<leader>st` go to todo
- normal `<leader>sT` go to todo/fix/fixme
- normal `[t` previous todo
- normal `]t` previous todo

## LSP

- normal `<leader>cr` rename symbol
- normal `<leader>cl` lsp info
- normal `gd` goto definition
- normal `gr` references
- normal `gI` goto implementation
- normal `gy` goto type definition
- normal `gD` goto declaration
- normal `K` hover

## Quotes and special characters

- insert `<C-g>o` smart opening quotes
- insert `<C-g>c` smart closing quotes
- insert `<C-g>O` smart opening single quote
- insert `<C-g>C` smart closing single quote
- insert `<G-g>.` ellipsis character

## Code formatting

- normal `<leader>cf` format current buffer
- normal `<leader>cF` force format current buffer
- visual `<leader>cf` format selection

## Refactoring

- visual `<leader>rs` refactor selection
- `<leader>ri` inline variable
- `<leader>rb` extract block
- `<leader>rf` extract to file
- `<leader>rv` extract variable
- `<leader>rI` inline function

## Code companion

- normal `ga` select agent
- normal `gd` debug code companion (allows edits to chat)
- normal `gp` pin context
- normal `gw` watch context
- normal `gD` super diff
- normal `{` previous chat
- normal `}` next chat
- normal `gx` clear chat buffer

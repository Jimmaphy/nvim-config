# Personal Neovim Configuration

The repository one is currently looking at is my personal configuration for Neovim.
Since I prefer simplicity, the editor has remained mainly unchanged compared to the base.
This page provides an overview of changes.


## Settings

- Relative line numbers
- Expanding tabs of length 4
- Smart indentation
- No text wrapping
- Incremental non-highlighted search
- Allow use of terminal colors


## Shortcuts

- `Space + d` in Normal Mode to show diagnostics in a floating window
- `Control + j` and `Control + k` in Insert Mode to navigate completion suggestions


## Language-specific Settings

- Go: run `go fmt` on file save, according to the [Go documentation](https://go.dev/gopls/editor/vim).


## Plugins

The configuration uses [lazy](https://github.com/folke/lazy.nvim) as package manager for the editor.

- [github-nvim-theme](https://github.com/projekt0n/github-nvim-theme).
  Used with the `github_light` setting to set the theme of the editor.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
  Setup to install parsers for highlighting automatically.
- [mason](https://github.com/mason-org/mason.nvim)
  Installs LSP servers for static code checking.
- [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim).
  Determines which servers to install
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
  Starts and connects with LSP's
- [copilot](https://github.com/github/copilot.vim).
  GitHub Copilot integration for code completion.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp).
  Autocompletion engine and LSP source for it.
  Setup in insert mode to provide suggestions as you type, filling them during selection.

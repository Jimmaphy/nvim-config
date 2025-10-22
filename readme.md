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

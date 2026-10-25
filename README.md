# Neovim Config

A [LazyVim](https://lazyvim.github.io) setup managed by [lazy.nvim](https://github.com/folke/lazy.nvim). It stays close to LazyVim defaults, with a few small tweaks and a broad set of language extras.

## Layout

```
init.lua                  # Entry point, loads config.lazy
lazyvim.json              # Enabled LazyVim extras
lazy-lock.json            # Pinned plugin versions
lua/config/               # options, keymaps, autocmds, lazy bootstrap
lua/plugins/              # Plugin overrides (completion, noice)
```

## Customizations

- **Autoformat off on save** (`vim.g.autoformat = false`). Format manually with `<leader>cf`.
- **Completion** (`plugins/completion.lua`): blink.cmp uses only LSP and path sources. Snippet, text and keyword items are filtered out, and `<Tab>` accepts the selected item.
- **Noice** (`plugins/noice.lua`): LSP progress messages are hidden.
- `plugins/example.lua` is the stock LazyVim example and is disabled.

## Enabled Extras

- **Languages:** C/C++ (clangd), Docker, Git, Go, Java, JSON, Markdown, OCaml, PHP, Python, R, Rust, SQL, Tailwind, Terraform, TeX, TypeScript
- **Tooling:** Prettier, DAP (debugging), test runner
- **UI/AI:** mini-animate, Claude Code integration, VS Code (Neovim extension) compatibility

## Install

Requires Neovim 0.10+ (check LazyVim's docs for the current minimum), git, and a [Nerd Font](https://www.nerdfonts.com/).

```sh
git clone <this-repo> ~/.config/nvim
nvim   # plugins install on first launch
```

Run `:Lazy restore` to match the versions in `lazy-lock.json`, and `:Mason` to manage LSP servers and formatters.

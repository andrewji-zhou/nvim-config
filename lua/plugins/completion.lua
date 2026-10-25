return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- only ask the language server and the filesystem
      opts.sources.default = { "lsp", "path" }

      -- drop snippet and plain-text items that the server itself returns
      opts.keymap = opts.keymap or {}
      opts.keymap["<Tab>"] = { "select_and_accept", "snippet_forward", "fallback" }
      opts.sources.providers = opts.sources.providers or {}
      opts.sources.providers.lsp = vim.tbl_deep_extend("force", opts.sources.providers.lsp or {}, {
        transform_items = function(_, items)
          local kind = require("blink.cmp.types").CompletionItemKind
          return vim.tbl_filter(function(item)
            return item.kind ~= kind.Snippet and item.kind ~= kind.Text and item.kind ~= kind.Keyword
          end, items)
        end,
      })
    end,
  },
}

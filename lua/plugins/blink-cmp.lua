return {
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      keymap = {
        preset = "default",
        ["<C-y>"] = { "select_and_accept" },
        ["<C-e>"] = { "cancel", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
      completion = {
        accept = {
          auto_brackets = { enabled = false },
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}

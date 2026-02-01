return {
  {
    "saghen/blink.cmp",
    optional = true,
    dependencies = { "giuxtaposition/blink-cmp-copilot" },
    opts = {
      keymap = {
        preset = 'enter',
        ['<CR>'] = { 'accept', 'fallback' },
        ['<S-Tab>'] = { 'select_and_accept', 'fallback' },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100, -- Adjust priority
            async = true,
          },
        },
      },
    },
  },
}

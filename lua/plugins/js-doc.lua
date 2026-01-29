return {
  "danymat/neogen",
  config = function()
    require("neogen").setup({
      snippet_engine = "luasnip", -- if you use LuaSnip
      languages = {
        typescript = {
          template = {
            annotation_convention = "tsdoc", -- or “jsdoc” if you prefer
            template = {
              { nil, "/**" },
              { nil, " * @description ${1:Describe this function}" },
              { nil, " *" },
              { "parameters", " * @param ${name} ${type} ${description}" },
              { nil, " */" },
            },
          },
        },
        javascript = {
          template = {
            annotation_convention = "jsdoc",
            template = {
              { nil, "/**" },
              { nil, " * @description ${1:Describe this function}" },
              { nil, " *" },
              { "parameters", " * @param ${name} ${type} ${description}" },
              { nil, " */" },
            },
          },
        },
      },
    })
  end,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
}

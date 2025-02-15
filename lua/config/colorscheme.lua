-- global colors
vim.g.material_style = 'palenight'
vim.cmd 'colorscheme material'

-- c# colors
vim.api.nvim_set_hl(0, "@lsp.type.keyword.cs", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "@lsp.type.type.cs", { foreground = "#b5cea8" })
vim.api.nvim_set_hl(0, "@lsp.type.function.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.method.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.extensionMethodName.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.variable.cs", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter.cs", { foreground = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@lsp.type.string.cs", { foreground = "#6a9955" })
vim.api.nvim_set_hl(0, "@lsp.type.comment.cs", { foreground = "#57a64a" })
vim.api.nvim_set_hl(0, "@lsp.type.operator.cs", { foreground = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@lsp.type.punctuation.cs", { foreground = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@lsp.type.number.cs", { foreground = "#b5cea8" })
vim.api.nvim_set_hl(0, "@lsp.type.class.cs", { foreground = "#4ec9b0" })
vim.api.nvim_set_hl(0, "@lsp.type.interface.cs", { foreground = "#4ec9b0" })
vim.api.nvim_set_hl(0, "@lsp.type.struct.cs", { foreground = "#b5cea8" })
vim.api.nvim_set_hl(0, "@lsp.type.enum.cs", { foreground = "#b5cea8" })
vim.api.nvim_set_hl(0, "@lsp.type.property.cs", { foreground = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@lsp.type.event.cs", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "@lsp.type.annotation.cs", { foreground = "#ff0000" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.cs", { foreground = "#d4d4d4" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.preprocessorDirective.cs", { foreground = "#cf222e" })
vim.api.nvim_set_hl(0, "@lsp.type.lambda.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.delegate.cs", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.field.cs", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "@lsp.type.constant.cs", { foreground = "#4ec9b0" })
vim.api.nvim_set_hl(0, "@lsp.codelens", { foreground = "#ff6347", bold = true })

-- vue colors
vim.api.nvim_set_hl(0, "htmlTag", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "htmlTagName", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "htmlSpecialTagName", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "htmlArg", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "htmlScriptTag", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "htmlString", { foreground = "#6a9955" })
vim.api.nvim_set_hl(0, "javaScriptReserved", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "javaScriptIdentifier", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "javaScriptType", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "javaScriptFunction", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "javaScriptStringS", { foreground = "#6a9955" })
vim.api.nvim_set_hl(0, "javaScript", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "@lsp.type.class.vue", { foreground = "#4ec9b0" })
vim.api.nvim_set_hl(0, "@lsp.type.variable.vue", { foreground = "#9cdcfe" })
vim.api.nvim_set_hl(0, "@lsp.type.function.vue", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.member.vue", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary.vue", { foreground = "#569cd6" })
vim.api.nvim_set_hl(0, "@lsp.typemod.member.defaultLibrary.vue", { foreground = "#dcdcaa" })
vim.api.nvim_set_hl(0, "@lsp.type.property.vue", { foreground = "#d4d4d4" })

vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#FF0000" })

require("cmp").setup({
    window = {
        completion = {
            border = "rounded",
            winhighlight = "Normal:CmpNormal",
        },

        documentation = {
            winhighlight = "Normal:CmpDocNormal",
        }
    }
})


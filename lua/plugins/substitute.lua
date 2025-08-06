return {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local substitute = require("substitute")

        substitute.setup()

        vim.keymap.set("n", "<leader>r", substitute.operator, { noremap = true, desc = "Substitute with motion" })
        vim.keymap.set("n", "<leader>rr", substitute.line, { noremap = true, desc = "Substitute line" })
        vim.keymap.set("n", "<leader>R", substitute.eol, { noremap = true, desc = "Substitute to end of line" })
        vim.keymap.set("x", "<leader>r", substitute.visual, { noremap = true, desc = "Substitute in visual mode" })
    end,
}

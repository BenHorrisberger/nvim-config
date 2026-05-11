return {
    "OXY2DEV/markview.nvim",
    lazy = false,

    -- Completion for `blink.cmp`
    -- dependencies = { "saghen/blink.cmp" },
    -- Disable automatic previews.

    config = function()
        require("markview").setup({
            preview = { enable = false }
        })

    end,

    vim.api.nvim_set_keymap("n", "<leader>m", "<CMD>Markview<CR>", { desc = "Toggles `markview` previews globally." });
    vim.api.nvim_set_keymap("n", "<leader>ms", "<CMD>Markview splitToggle<CR>", { desc = "Toggles `splitview` for current buffer." });
};

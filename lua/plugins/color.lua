return 
{ 
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    config = function()
        require("catppuccin").setup({
            flavor = "frappe",
            
            default_integrations = true,
            auto_integrations = true,

            styles = {
                comments = {},
                conditionals = {},
            },

            color_overrides = {
                frappe = {
                    text = "#ffffff",
                },
            },

            highlight_overrides = {
                frappe = function(colors)
                    return {
                        -- editor colors
                        Normal = { bg = "#363636" },
                        NormalNC = { bg = "#363636" },
                        EndOfBuffer = { fg = "#363636", bg = "#363636" }, 

                        -- terminal
                        TermNormal = { bg = "#000000" },

                        -- line numbers
                        LineNr = { fg = colors.text },

                        -- text colors
                        Operator = { fg = "#ffffff" },
                        ["@property"] = { fg = "#ffffff" },

                        -- neo-tree colors
                        NeoTreeNormal = { bg = "#242424" },
                        NeoTreeNormalNC = { bg = "#242424" },
                        NeoTreeEndOfBuffer = { bg = "#242424" },
                        NeoTreeCursorLine = { bg = "#363636" },
                        NeoTreeWinSeparator = {  fg = "#363636", bg = "#363636" },
                        NeoTreeFloatBorder = {  fg = "#363636", bg = "#363636" },
                        NeoTreeFileName = { fg = "#ffffff" },
                        NeoTreeEndOfBuffer = { fg = "#242424", bg = "#242424" },

                        -- telescope
                        TelescopeNormal = { bg = "#242424" },
                        TelescopeBorder = { fg = "#363636", bg = "#242424" },
                        TelescopePromptNormal = { bg = "#2e2e2e" },
                        TelescopePromptBorder = { fg = "#242424", bg = "#2e2e2e" },
                        TelescopePromptTitle = { fg = colors.text, bg = "#2e2e2e" },
                        TelescopePreviewTitle = { fg = colors.text, bg = "#242424" },
                        TelescopeResultsTitle = { fg = colors.text, bg = "#242424" },
                        TelescopePromptPrefix = { fg = colors.text },
                        TelescopePromptCounter = { fg = colors.text },
                        TelescopeSelection = { bg = "#363636" },
                        TelescopeSelectionCaret = { fg = colors.text, bg = "#363636" },

                    }
                end,
            },
        })

        vim.cmd.colorscheme("catppuccin-frappe")
    end,
}

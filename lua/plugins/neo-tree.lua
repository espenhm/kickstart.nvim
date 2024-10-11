-- Nicer filetree than NetRW
return {
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require('neo-tree').setup {
                event_handlers = {
                    {
                        event = 'file_open_requested',
                        handler = function()
                            -- auto close
                            vim.cmd 'Neotree close'
                            -- OR
                            --require('neo-tree.command').execute { action = 'close' }
                        end,
                    },
                },
                filesystem = {
                    filtered_items = {
                        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                        hide_dotfiles = false,
                        hide_gitignored = true,
                    },
                },
            }
        end,
    },
}

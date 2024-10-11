-- Highlight, edit, and navigate code
return {
    { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

            ---@diagnostic disable-next-line: missing-fields
            require('nvim-treesitter.configs').setup {
                ensure_installed = { 'bash', 'c', 'html', 'css', 'lua', 'markdown', 'markdown_inline', 'vim', 'vimdoc', 'gdscript', 'godot_resource', 'gdshader' },
                auto_tag = { enable = true },
                -- Autoinstall languages that are not installed
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = false },
            }
        end,
    },

    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require('treesitter-context').setup {
                enable = true,           -- enable this plugin (can be enabled/disabled later via commands)
                max_lines = 10,          -- how many lines the window should span. values <= 0 mean no limit.
                min_window_height = 0,   -- minimum editor window height to enable context. values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 1, -- maximum number of lines to show for a single context
                trim_scope = 'outer',    -- which context lines to discard if `max_lines` is exceeded. choices: 'inner', 'outer'
                mode = 'cursor',         -- line used to calculate context. choices: 'cursor', 'topline'
                -- separator between context and content. should be a single character string, like '-'.
                -- when separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20,     -- the z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end,
    },
}

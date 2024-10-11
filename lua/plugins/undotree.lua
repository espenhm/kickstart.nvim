---
--- Created by espen.meland.
--- DateTime: 11/10/2024 14:59
---
return {
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
            vim.g.undotree_SetFocusWhenToggle = 1
        end,
    }
}

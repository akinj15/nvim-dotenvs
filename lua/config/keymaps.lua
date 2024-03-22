-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set('n', '<leader>d', '<cmd>bdelete<CR>', { desc = "delete buffer" })

local maps = { n = {}, v = {}, t = {} }

local utils = function(map)
  for mode, _maps in pairs(map) do
    for key, values in pairs(_maps) do
      vim.keymap.set(mode, key, values[1], values[2])
    end
  end
end

maps.n["<leader>/"] = {
  function()
    require("Comment.api").toggle.linewise.current()
  end,
  { desc = "Comment line" },
}
maps.v["<leader>/"] = {
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = "Toggle comment line" },
}

utils(maps)

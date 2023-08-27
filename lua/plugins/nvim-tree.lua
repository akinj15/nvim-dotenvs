return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")
		-- recommended settings from nvim-tree documentation
		vim.g.loaded = 1
		vim.g.loaded_netrwPlugin = 1

		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3fc5ff ]])

		nvimtree.setup({
			-- renderer = {
			-- 	icons = {
			-- 		glyphs = {
			-- 			folder = {
			-- 				arrow_closed = "➡",
			-- 				arrow_open = "⬇",
			-- 			},
			-- 		},
			-- 	},
			-- },
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
		})
	end,
}

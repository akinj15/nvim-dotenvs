return {
	"xiyaowong/nvim-transparent",
	init = function()
		require("transparent").setup()
		vim.g.transparent_enabled = true
	end,
}

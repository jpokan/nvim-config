require('telescope').setup({

extensions = {
	file_browser = {
			hidden = { file_browser = true, folder_browser = true },
		},
	},
})
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
	"n",
	"<space>fb",
	":Telescope file_browser<CR>",
	{ noremap = true }
)


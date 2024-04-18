-- local util = require "formatter.util"
--
require("formatter").setup {
	filetype = {
		vue = {
			function()
				return {
					exe = "prettierd",
					args = { vim.api.nvim_buf_get_name(0) },
					stdin = true
				}
			end
		}
	},
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
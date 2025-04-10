return {
	"saghen/blink.cmp",
	opts = {
		keymap = {
			-- Change custom keymap to select next item on suggestions
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
		},
	},
}

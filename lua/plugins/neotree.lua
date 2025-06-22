local keymaps = {
	{
		"<leader>e",
		desc = "Toggle Neotree",
		function()
			require("neo-tree.command").execute({ toggle = true, position = "left" })
		end,
	},
}

local opts = {
	window = {
		mappings = {
			["P"] = {
				"toggle_preview",
				config = {
					use_float = true,
					-- use_image_nvim = true,
					title = "Neo-tree Preview",
				},
			},
		},
	},
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	lazy = false, -- neo-tree will lazily load itself
	---@module "neo-tree"
	---@type neotree.Config?
	opts = opts,
	keys = keymaps,
}

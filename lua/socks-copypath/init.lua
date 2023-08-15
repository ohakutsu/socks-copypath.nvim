local api = require("socks-copypath.api")
local config = require("socks-copypath.config")

local M = {}

function M.setup(cfg)
	if cfg == nil then
		cfg = {}
	end
	config:set(cfg)

	vim.api.nvim_create_user_command("CopyPath", function()
		local path = api.copy_absolute_path(config:get())
		print("Copied " .. path)
	end, {
		desc = "Copy path of current file",
	})

	vim.api.nvim_create_user_command("CopyRelativePath", function()
		local path = api.copy_relative_path(config:get())
		print("Copied " .. path)
	end, {
		desc = "Copy relative path of current file",
	})
end

return M

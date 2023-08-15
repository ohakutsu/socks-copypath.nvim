local Api = {}

local function set_register(register, value)
	vim.fn["setreg"](register, value)
end

function Api.copy_relative_path(cfg)
	local path = vim.fn["expand"]("%")
	set_register(cfg.register, path)
	return path
end

function Api.copy_absolute_path(cfg)
	local path = vim.fn["expand"]("%:p")
	set_register(cfg.register, path)
	return path
end

return Api

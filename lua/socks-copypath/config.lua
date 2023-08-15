local Config = {}

Config.config = {
	register = "+",
}

function Config:get()
	return self.config
end

function Config:set(cfg)
	self.config = vim.tbl_deep_extend("force", self.config, cfg)
end

return Config

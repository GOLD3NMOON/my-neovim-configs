local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local function load_plugins()
	local plugins = {}
	local plugin_files = vim.fn.glob(vim.fn.stdpath("config") .. "/lua/plugins/*/*.lua", true, true)
	for _, file in ipairs(plugin_files) do
		local module_path = file:match("lua/(.*)"):gsub(".lua$", "")
		local success, plugin = pcall(require, module_path)
		if success and type(plugin) == "table" then
			for _, p in ipairs(plugin) do
				table.insert(plugins, p)
			end
		end
	end
	return plugins
end

require("lazy").setup(load_plugins(), {
	defaults = { lazy = false },
	ui = { border = "rounded" },
})

-- Clone 'mini.nvim' manually in a way that it gets managed by 'mini.deps'
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/nvim-mini/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

require('mini.deps').setup({ path = { package = path_package } })

local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function() require('mini.notify').setup() end)
now(function() require('mini.icons').setup() end)
now(function() require('mini.tabline').setup() end)
now(function() require('mini.statusline').setup() end)

-- Safely execute later
later(function() require('mini.ai').setup() end)
later(function() require('mini.comment').setup() end)
later(function() require('mini.pick').setup() end)
later(function() require('mini.surround').setup() end)

add({
	source = 'nvim-treesitter/nvim-treesitter',
	checkout = 'master',
	monitor = 'main',
	-- Perform action after every checkout
	hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
})

require('nvim-treesitter.configs').setup({
	ensure_installed = { 'lua', 'vimdoc', 'rust', 'python', 'markdown', "java", 'javascript', 'cpp', 'gdscript', 'gitignore', 'html', 'hyprlang' },
	highlight = { enable = true },
})

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

add({
	source = 'nvim-mini/mini.pairs',
	checkout = 'stable',
})

-- Color Scheme

add({
	source = 'catppuccin/nvim',
	name = 'catppuccin',
})

require('catppuccin').setup({
	flavour = 'mocha',
	transparent_background = true,
	integrations = {
		nvimtree = true,
		mini = {
			enabled = true,
			--indentscope_color = "",
		}
	},
})

now(function()
	vim.o.termguicolors = true
	vim.cmd('colorscheme catppuccin')
end)

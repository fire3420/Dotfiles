-- custom/plugins/init.lua

return {
   ["vim-autoformat/vim-autoformat"] = {},
   ["stevearc/gkeep.nvim"] = {},
   ["MattesGroeger/vim-bookmarks"] = {},
   ['luk400/vim-jukit'] = {},
   ['MathSquared/vim-python-sql'] = {},
   ['fatih/vim-go'] = {},
   ['rking/ag.vim'] = {},
   ['majutsushi/tagbar'] = {},
   ['puremourning/vimspector'] = {},
   ['rhysd/vim-grammarous'] = {},
   ["phaazon/hop.nvim"] = {
      branch = 'v1', -- optional but strongly recommended
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end,
   },
}

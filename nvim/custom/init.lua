

-- example file i.e lua/custom/init.lua

-- Mac
-- vim.g.python3_host_prog = "/usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin/python3"
-- Ubuntu
vim.g.python3_host_prog = "/home/john/Jungyong/nvim/bin/python3"

vim.g.formatters_python = {'yapf'}
vim.g.formatter_yapf_style = 'google'

vim.g.formatdef_dbtsql = '"cat > /tmp/sqlfile; dbt-formatter --upper --file /tmp/sqlfile; rm -f /tmp/sqlfile"'
-- vim.g.formatdef_dbtsql = '"cat > /tmp/sqlfile; dbt-formatter --upper --file /tmp/sqlfile"'
vim.g.formatters_sql = {'dbtsql'}

vim.g.luasnippets_path = "/Users/john/Jungyong/Prog_setting_mac/snippets"
vim.g.jukit_highlight_markers = 1
vim.g.jukit_enable_textcell_bg_hl = 0

vim.g.tagbar_autoclose = 1
vim.g.tagbar_autofocus = 1
vim.g.tagbar_width = 60

vim.wo.wrap = false

vim.api.nvim_command('set tags=tags')
-- vim.api.nvim_command('set path=.')

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "silent! VimspectorLoadSession",
})

vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  command = "silent! VimspectorMkSession",
})

-- vim.g.luasnippets_path = "/Users/john/Library/Application\\ Support/Code/User/snippets/"

-- load your globals, autocmds here or anything .__.

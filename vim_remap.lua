-- a vim remap to key the keywords from the keyword binary file
-- 
--
function get_note(arg)
    vim.fn.system('~/code/cpp/keywords/keywords ' .. arg)
    vim.cmd('read! cat ' .. arg .. ".cpp")
end

vim.cmd([[command! -nargs=1 Key call v:lua.get_note(<q-args>)]])
vim.api.nvim_set_keymap('n', '<Leader>key', ':Key ', { noremap = true, silent = true })

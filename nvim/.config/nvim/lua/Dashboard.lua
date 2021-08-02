local cmd = vim.cmd

cmd 'autocmd FileType dashboard set showtabline=0'
cmd 'autocmd WinLeave <buffer> set showtabline=2'
cmd "let g:indentLine_fileTypeExclude = ['dashboard']"


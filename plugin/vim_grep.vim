" Date Create: 2015-02-22 14:49:51
" Last Change: 2015-02-22 15:40:06
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:Plugin = vim_lib#sys#Plugin#

let s:p = s:Plugin.new('vim_grep', '1')

call s:p.menu('Grep', 'grep', '1')
call s:p.menu('Grep_current_word', 'grepCurrentWord', '2')

call s:p.comm('VimGrep', 'grep()')

call s:p.reg()

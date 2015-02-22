" Date Create: 2015-02-22 14:51:17
" Last Change: 2015-02-22 15:53:21
" Author: Artur Sh. Mamedbekov (Artur-Mamedbekov@yandex.ru)
" License: GNU GPL v3 (http://www.gnu.org/copyleft/gpl.html)

let s:System = vim_lib#sys#System#.new()

"" {{{
" Метод выполняет рекурсивный поиск заданного предложения во всех файлах текущего каталога.
" Найденные соответствия будут отображаться в отдельном окне. Перейти в файл с соответствием можно с помощью клавиши Enter.
" @param string word Искомое слово.
"" }}}
function! vim_grep#_grep(word) " {{{
  execute 'silent! grep! -R ' . shellescape(a:word) . ' .'
  copen
  redraw!
endfunction " }}}

"" {{{
" Метод получает от пользователя искомое выражение и выполняет рекурсивный поиск его во всех файлах текущего каталога.
" Найденные соответствия будут отображаться в отдельном окне. Перейти в файл с соответствием можно с помощью клавиши Enter.
"" }}}
function! vim_grep#grep() " {{{
  let l:word = s:System.read('Enter your word: ')
  if l:word != ''
    call vim_grep#_grep(l:word)
  endif
endfunction " }}}

"" {{{
" Метод выполняет рекурсивный поиск слова под курсором во всех файлах текущего каталога.
" Найденные соответствия будут отображаться в отдельном окне. Перейти в файл с соответствием можно с помощью клавиши Enter.
"" }}}
function! vim_grep#grepCurrentWord() " {{{
  call vim_grep#_grep(expand('<cWORD>'))
endfunction " }}}

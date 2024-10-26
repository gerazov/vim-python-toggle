" File:         toggle-bool.vim
" Description:  Toggle boolean values.
" Author:       Branislav Gerazov <gerazov@feit.ukim.edu.mk>

if exists('g:loaded_toggle_bool')
    finish
endif
let g:loaded_toggle_bool= 1
let g:switch_custom_definitions =
    \ [
    \   switch#NormalizedCase(['true', 'false']),
    \   switch#NormalizedCase(['yes', 'no']),
    \   switch#NormalizedCase(['on', 'off']),
    \   switch#NormalizedCase(['enable', 'disable']),
    \   switch#NormalizedCase(['enabled', 'disabled']),
    \   switch#NormalizedCase(['first', 'last']),
    \   switch#NormalizedCase(['before', 'after']),
    \   switch#NormalizedCase(['persistent', 'ephemeral']),
    \   switch#NormalizedCase(['internal', 'external']),
    \   switch#NormalizedCase(['start', 'stop']),
    \   switch#NormalizedCase(['in', 'out']),
    \   switch#NormalizedCase(['open', 'close']),
    \   switch#NormalizedCase(['enter', 'exit']),
    \   switch#NormalizedCase(['lock', 'unlock']),
    \   switch#NormalizedCase(['connect', 'disconnect']),
    \   switch#NormalizedCase(['mount', 'dismount']),
    \   switch#NormalizedCase(['import', 'export']),
    \   switch#NormalizedCase(['ingress', 'egress']),
    \   switch#NormalizedCase(['allow', 'deny']),
    \   switch#NormalizedCase(['all', 'none'])
    \ ]

function! ToggleBool()
   let save_pos = getpos(".")
   normal! 0

   if search('\c\<true\>\|\<false\>', '', line('.')) > 0
       Switch
   elseif search('\c\<yes\>\|\<no\>', '', line('.')) > 0
       Switch
   elseif search('\c\<on\>\|\<off\>', '', line('.')) > 0
       Switch
   elseif search('\c\<enable\>\|\<disable\>', '', line('.')) > 0
       Switch
   elseif search('\c\<enabled\>\|\<disabled\>', '', line('.')) > 0
       Switch
   elseif search('\c\<first\>\|\<last\>', '', line('.')) > 0
       Switch
   elseif search('\c\<before\>\|\<after\>', '', line('.')) > 0
       Switch
   elseif search('\c\<persistent\>\|\<ephemeral\>', '', line('.')) > 0
       Switch
   elseif search('\c\<internal\>\|\<external\>', '', line('.')) > 0
       Switch
   elseif search('\c\<start\>\|\<stop\>', '', line('.')) > 0
       Switch
   elseif search('\c\<in\>\|\<out\>', '', line('.')) > 0
       Switch
   elseif search('\c\<open\>\|\<close\>', '', line('.')) > 0
       Switch
   elseif search('\c\<enter\>\|\<exit\>', '', line('.')) > 0
       Switch
   elseif search('\c\<lock\>\|\<unlock\>', '', line('.')) > 0
       Switch
   elseif search('\c\<connect\>\|\<disconnect\>', '', line('.')) > 0
       Switch
   elseif search('\c\<mount\>\|\<dismount\>', '', line('.')) > 0
       Switch
   elseif search('\c\<import\>\|\<export\>', '', line('.')) > 0
       Switch
   elseif search('\c\<ingress\>\|\<egress\>', '', line('.')) > 0
       Switch
   elseif search('\c\<allow\>\|\<deny\>', '', line('.')) > 0
       Switch
   elseif search('\c\<all\>\|\<none\>', '', line('.')) > 0
       Switch
   elseif search('\<1\>', '', line('.')) > 0
       execute 's/\<1\>/0/'
   elseif search('\<0\>', '', line('.')) > 0
       execute 's/\<0\>/1/'
   endif

   call setpos(".", save_pos)
endfunction

command! -nargs=0 ToggleBool call ToggleBool()


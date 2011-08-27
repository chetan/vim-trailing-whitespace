
function! s:Trim(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :Trim to remove end of line white space.
command! -range=% Trim call <SID>Trim(<line1>,<line2>)


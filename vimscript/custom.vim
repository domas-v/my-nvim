" python
augroup python_def_abb
    autocmd!
    autocmd FileType python inoreabbrev def def():<left><left><left>
    autocmd FileType python inoreabbrev class class():<left><left><left>
augroup END

augroup python_folds
    autocmd!
    autocmd BufEnter,FileType python set foldmethod=indent
    autocmd BufEnter,FileType python set foldnestmax=2
augroup end

augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi link illuminatedWord Visual
augroup END

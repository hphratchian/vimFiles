augroup filetypedetect
au BufNewFile,BufRead *.inc	setf fortran
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.f03	setf fortran
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.make	setf make
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.txt	setf text
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.dat	setf text
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.tex	setf tex
augroup END

augroup filetypedetect
au BufNewFile,BufRead *.cls     setf tex
augroup END

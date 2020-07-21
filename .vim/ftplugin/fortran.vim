let s:extfname = expand("%:e")
if s:extfname ==? "f90"
  let fortran_free_source=1
  unlet! fortran_fixed_source
elseif s:extfname ==? "f03"
  let fortran_free_source=1
  unlet! fortran_fixed_source
else
  let fortran_fixed_source=1
  unlet! fortran_free_source
endif

let fortran_do_enddo=1
"" let fortran_fold=1

" Turn on line numbers and row/column numbers.
"" setlocal nu
setlocal ruler

" Make vim echo commands as they are being entered.
setlocal showcmd

" Set tabstops to two spaces and ensure tab characters are expanded into
" spaces.
setlocal softtabstop=6
setlocal expandtab
setlocal smartindent
" setlocal smarttab
setlocal autoindent
setlocal shiftwidth=2

" Fix backspace key.
setlocal bs=2

" Set folding
"" setlocal foldmethod=syntax

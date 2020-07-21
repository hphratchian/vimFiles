" Vim syntax file
" Language:	Gaussian fchk files
" Maintainer:	Jason L. Sonnenberg <sonnenberg.11@osu.edu>
" Last Change:	2011 June 20
" Remark:	

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Comments
syntax region fchkComment start=/!/ end=/$/ oneline 
highlight link fchkComment Comment

" Labels
syntax region fchkLabel start=/^[A-Z]/ end=/\s-*\d\+\(\.\d\+E[-\+]\d\{2}\)*/ oneline contains=ALLBUT,fchkComment keepend
highlight link fchkLabel Identifier

" Types
syntax match fchkInteger /\sI\s/
highlight link fchkInteger Type
syntax match fchkReal /\sR\s/
highlight link fchkReal Type
syntax match fchkCharacter /\sC\s/
highlight link fchkCharacter Type
syntax cluster fchkTypes contains=fchkInteger,fchkReal,fchkCharacter

" Lengths
syntax match fchkLength /\s\{2,}\-*\d\+\(\.\d\+E[-\+]\d\{2}\)*/ contained
highlight link fchkLength Number

" N
syntax match fchkN /\s\{2,}N/ contained

" Operators
syntax match fchkOperator /=/
highlight link fchkOperator Operator

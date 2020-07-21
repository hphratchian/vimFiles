" Vim syntax file
" Language:	Gaussian gjf files
" Maintainer:	Jason L. Sonnenberg <sonnenberg.11@osu.edu>
" Last Change:	2011 June 20
" Remark:	

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Comments
syntax region gjfComment start=/!/ end=/$/ oneline 
highlight link gjfComment Comment

" Link0 commands
syntax match gjfLink0 /%\w\+/
highlight link gjfLink0 Identifier

" Route line
syntax region gjfRoute start=/#/ end=/^$/
highlight link gjfRoute Keyword

" Operators
syntax match logOperator /=/
highlight link logOperator Operator

" At Files
syntax match gjfAtFiles /@.\+/
highlight link gjfAtFiles Include

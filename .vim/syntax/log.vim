" Vim syntax file
" Language:	Gaussian Log files
" Maintainer:	Jason L. Sonnenberg <sonnenberg.11@osu.edu>
" Last Change:	2011 June 20
" Remark:	

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" At Files
syntax match logAtFiles /AtFile.\+/
highlight link logAtFiles Include

" Copyright
syntax region logCopyright start=/Copyright/ end=/prohibited\sabove/ contains=logDashedLine keepend
highlight link logCopyright Comment

" Citation
syntax region logCitation start=/Cite\sthis\swork/ end=/\.$/ 
highlight link logCitation Type

" Link0 commands
syntax match logLink0 /%\w\+/
highlight link logLink0 Identifier

" Section & Table demarcation
syntax match logSection /!/
syntax region logSection start=/-\{4,}/ end=/$/ oneline
syntax region logSection start=/\*\{4,}/ end=/$/ oneline
syntax region logSection start=/=\{4,}/ end=/$/ oneline
syntax region logSection start=/\(Grad\)\{2,}/ end=/$/ oneline
syntax region logSection start=/\(rotor\)\{2,}/ end=/$/ oneline
syntax region logSection start=/\(IRC-\)\{2,}/ end=/$/ oneline
highlight link logSection Comment

" Dashed lines contained in other items
syntax region logDashedLine start=/-\{2,}/ end=/$/ oneline contained
highlight link logDashedLine Comment

" Route line
syntax region logRoute start=/^\s#/ end=/^\s-\{10,}$/ contains=logDashedLine keepend
highlight link logRoute Keyword

" Operators
syntax match logOperator /=/
highlight link logOperator Operator

" Error termination
syntax region logError start=/^\sError\stermination/ end=/$/
highlight link logError Error

" Normal termination
syntax region logSuccess start=/^\sNormal\stermination/ end=/$/
highlight link logSuccess Type

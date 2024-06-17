syntax on
set number

" search
set hlsearch " highlighting on
set ignorecase " ignore capital letters during search

" R
" render rmarkdown files to .pdf
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<center> 

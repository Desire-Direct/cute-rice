syntax on
set number

" show date and time
:command! GimmeDate echo call("strftime", [<args>])
:GimmeDate "%F"  
:GimmeDate "%H:%M" 




" on python highlight functions and params calls (such as foo.bar() to set bar() in the function color)

syntax match pyCustomParen     "(" contains=cParen
syntax match pyCustomFunc      "\w\+\s*(" contains=pyCustomParen
syntax match pyCustomScope     "\."
syntax match pyCustomAttribute "\.\w\+" contains=pyCustomScope
syntax match pyCustomMethod    "\.\w\+\s*(" contains=pyCustomScope,pyCustomParen

highlight def link pyCustomFunc  Function
highlight def link pyCustomMethod Function
highlight def link pyCustomAttribute Identifier

" if we want custom colors here
"
"highlight pyCustomFunc ctermfg=43
"highlight pyCustomAttribute ctermfg=247
"highlight pyCustomMethod ctermfg=33

" always go on tabs here, override other stuff
set noexpandtab

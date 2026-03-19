" on go highlight functions and params calls (such as foo.bar() to set bar() in the function color)

syntax match goCustomParen     "(" contains=cParen
syntax match goCustomFuncDef   "func\s\+\w\+\s*(" contains=goDeclaration,goCustomParen
" Exclude import as function name, for multi-line imports
syntax match goCustomFunc      "import\s\+(\|\(\w\+\s*\)(" contains=goCustomParen,goImport
syntax match goCustomScope     "\."
syntax match goCustomAttribute "\.\w\+" contains=goCustomScope
syntax match goCustomMethod    "\.\w\+\s*(" contains=goCustomScope,goCustomParen

highlight def link goCustomMethod Function
highlight def link goCustomAttribute Identifier

highlight goCustomFuncDef ctermfg=13
highlight goCustomFunc ctermfg=43
highlight goCustomAttribute ctermfg=247
highlight goCustomMethod ctermfg=33

if exists("b:current_syntax")
    finish
endif

syntax keyword knodeKeyword node edge char double else for if int while dict 
syntax keyword knodeKeyword and or null string final
syntax keyword knodeFunction main print follow
syntax match knodeComment "\v#.*$"

highlight link knodeKeyword Keyword
highlight link knodeFunction Function
highlight link knodeComment Comment

let b:current_syntax = "knode"

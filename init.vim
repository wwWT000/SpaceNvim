lua << EOF
require("settings.options")
require("settings.keymaps")
require("core.lazy-setup")
vim.cmd[[colorscheme onedark]]
EOF

let &termencoding=&encoding 
set fileencodings=utf-8,gbk,ucs-bom,cp936
"set ff=unix
map <leader>r :call CodeRun()<CR>
"CodeRun
func! CodeRun()
    exec "w"
    if &filetype == "c"
        exec "!gcc % -o %.exe"
        exec "term %.exe"
    elseif &filetype == "cpp"
        exec "!g++ % -o %.exe -lwinmm -leasyx"
        exec "term %.exe"
    elseif &filetype == "python"
        exec "term python %"
    endif
endfunc

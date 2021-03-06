if has("syntax")
   syntax on
endif

"function! GitBranch()
"  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"function! StatuslineGit()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

set laststatus=2
set statusline=
set statusline+=%f
"set statusline+=\ %{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}]
set statusline+=%#Comment#
set statusline+=\ %6l
set noswapfile
set hls
set list
set nrformats=
set shiftwidth=4 softtabstop=4 expandtab
set wildmenu
set wildmode=full
set history=200
set hidden
set mouse=a
set clipboard^=unnamed,unnamedplus

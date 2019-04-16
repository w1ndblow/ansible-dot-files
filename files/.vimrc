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

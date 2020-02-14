function! s:SetGlobalOptDefault(opt, val) "{{{1
  if !exists('g:' . a:opt)
    let g:{a:opt} = a:val
  endif
endfunction
call s:SetGlobalOptDefault('vimtureng_invoke_map', '<leader>t')

execute "nn <silent> " . g:vimtureng_invoke_map . ' :!tureng <c-r>=expand("<cword>")<cr> \| head<cr>'
execute "vn <silent> " . g:vimtureng_invoke_map . ' y<esc>:!tureng <c-r>" \| head<cr>'

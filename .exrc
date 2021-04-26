if has("autocmd")
  augroup templates
    autocmd BufNewFile *.md call GenZettel()
  augroup END
endif

function GenZettel()
  0r ./templates/zettel.md
  let currdate=localtime()
  let iddate=strftime("%Y-%m-%dt%H-%M-%Sz", currdate)
  execute 'file' fnameescape(iddate . expand('%'))
  let prettydate=strftime("%Y-%m-%d %H:%M:%S", currdate)
  exe "%s/\$currdate/".prettydate."/g"
  exe "%s/\$iddate/".iddate."/g"
  cal cursor(3, 8)
endfunction

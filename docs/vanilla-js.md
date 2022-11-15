## plugin 

- plugin bassic (optional)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [windwp nvim autopairs](https://github.com/windwp/nvim-autopairs)
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
- [jonsmithers/vim-html-template-literals](https://github.com/jonsmithers/vim-html-template-literals)
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
- [alvan/vim-closetag](https://github.com/alvan/vim-closetag)
- [vim javascript](https://github.com/pangloss/vim-javascript.git)
- coc-json
- coc-css
- coc-cssmodules
- coc-emmet
- coc-eslint
- coc-prettier
- coc-snippets

## use html on `html\`<div>ini div</div>\``

```vim
function HtlSave() abort
  let LAST_UNDO_COUNT = changenr()
  let LINE_NOW = line(".")
  execute "%s/html`/`/g"
  execute 'w|e'
  let UNDO_COUNT = changenr()
  let RESULT_COUNT = UNDO_COUNT-LAST_UNDO_COUNT
  execute 'earlier '.RESULT_COUNT
  execute 'normal!'.LINE_NOW.'G'
endfunction

command! HtlSave silent call HtlSave()
nnoremap <silent> <leader><leader>w :HtlSave<CR>
```

## coc config
> copy snippets di folder `snippets/<nama extenstion>`
```json
{
  "emmet.includeLanguages": {"vue-html": "html", "javascript": "html"},
  "coc.preferences.jumpCommand":"edit"
}
```
## optional config
```vim
let g:html_indent_style1 = "inc"
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
```

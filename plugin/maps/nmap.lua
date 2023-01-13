local key = vim.keymap.set
-- command
key('n',';',':')
key('n','<leader>w',':w<CR>')
key('n','<leader>q',':q<CR>')
-- search
key('n','<leader>s',':%s /')
-- scroll -------
-- scroll up
key({'n','v'},'<C-k>','10k')
-- scroll down
key({'n','v'},'<C-j>','10j')
-- scroll left
key({'n','v'},'<C-l>','20zl')
-- scroll righ
key({'n','v'},'<C-h>','20zh')
-- firts line
key({'n','v'},'<leader>i','^')
-- last line
key({'n','v'},'<leader>a','$')

-- bufer prev
key('n','<leader>p',':bp<CR>')
-- next
key('n','<leader>n',':bn<CR>')
-- firts
key('n','<leader>bf',':bfirst<CR>')
-- last
key('n','<leader>bl',':blast<CR>')
-- quit
key('n','<leader>bd',':bdelete<CR>')
-- delete all buffer not open
key('n','<leader>ba',':Bda<CR>')


-- text edit--------
-- copy all
key('n','ya','ggVGy')
-- cut all
key('n','da','ggVGd')
-- cut line
key('n','<leader>dy','bve"+d')
-- cut all
key('n','<leader>da','ggVG"+d')
-- cut --------------')
-- just cut
key('n','<BS>','v"_d')
key('v','<BS>','"_d')
key('n','<Del>','v"_d')
-- cut word before
key('n','<leader>re','vb"_d')
-- cut word after
key('n','<leader>rb','ve"_d')
-- delete all
key('n','<leader>ra','ggVG"_d')

-- delete line
key('n','<leader><Del>','V"_d')
key('n','<leader><BS>','V"_d')
-- clipboard-----------
-- paste
key('n','<C-p>','"+p')
-- copy visual
key('v','<leader>y','"+y')
-- cut visual
key('v','<leader>d','"+d')
-- copy line
key('n','<leader>yy','bve"+y')
-- copy all
key('n','<leader>ya','ggVG"+y')


-- close all folding
key('n','<leader>zc',':set nofoldenable<CR>')
-- create folding in html
key('n','<leader>zf','vtazf')
-- create folding in css/sass/js
key('n','<leader>zt','v%zf')
-- Split Vertical
-- Split Horizontal
key('n','<leader>-','<C-w>s')
-- Size screen left
key('n','<leader>>','<C-w>>')
-- Size screen right
key('n','<leader><','<C-w><')
-- go to screen right
key('n','<leader>l','<C-w>l')
-- go to screen left
key('n','<leader>h','<C-w>h')
-- go to screen down
key('n','<leader>j','<C-w>j')
-- go to screen top
key('n','<leader>k','<C-w>k')
key('n','<leader>dw',':cd ~/web<CR><CR>')
key('n','<leader>dm',':cd ~/web/muryp-new<CR><CR>')
key('n','<leader>dc',':cd ~/.myconf/<CR><CR>')
key('n','<leader>dv',':cd ~/.config/plugin/<CR><CR>')
key('n','<leader>dn',':Cdn<CR><CR>')
key('n','<leader>dg',':Cdg<CR><CR>')
-- swich to file before
key('n','<leader>u','<C-^>')
-- nvim config
key('n','<leader>,',':e ~/.config/nvim/init.lua<CR>')

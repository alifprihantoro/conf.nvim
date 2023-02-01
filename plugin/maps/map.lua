local key = vim.keymap.set
-- command
key('n', ';', ':')
-- scroll up
key({ 'n', 'v' }, '<C-k>', '10k')
-- scroll down
key({ 'n', 'v' }, '<C-j>', '10j')
-- scroll left
key({ 'n', 'v' }, '<C-l>', '20zl')
-- scroll righ
key({ 'n', 'v' }, '<C-h>', '20zh')
-- copy all
key('n', 'ya', 'ggVGy')
-- cut all
key('n', 'da', 'ggVGd')
-- just cut
key('n', '<BS>', 'v"_d')
key('v', '<BS>', '"_d')
key('n', '<Del>', 'v"_d')
key('t', '<C-q>', [[<C-\><C-n>]]) ---go normal mode from cli

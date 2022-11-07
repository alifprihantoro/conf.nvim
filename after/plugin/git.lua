-- use for commit msg
if GIT_COMMIT=="y" then
  vim.cmd("autocmd BufNewFile,BufRead * set syntax=gitcommit")
  print('berhasil')
end

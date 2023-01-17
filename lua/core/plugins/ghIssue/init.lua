local ghIssue = function(issue_number)
  vim.cmd('Cdg')
  local gitRoot = vim.fn.system("git rev-parse --show-toplevel"):gsub('\n', '')
  local dirname = gitRoot .. "/.git/muryp"
  local getDate = os.date():gsub(" ", ""):gsub(":", ""):gsub("%a", "")
  local filename = "/gh-issue-" .. issue_number .. getDate .. ".md"
  local file = dirname .. filename
  local getIssue = vim.fn.system("gh issue view " .. issue_number)
  local _, _, replaceIssue = string.find(getIssue, "(number:\t%d+)")
  local helper = [[

<!--
maps :
- <leader><leader>p => push
- <leader><leader>e => edit header
- <leader><leader>o => open browser
-->
<!--
NOTE : puth text under comment(all comment eddit is no effect )
-->
]]
  local delteNum = getIssue:gsub("number:.+%d\n--.", replaceIssue .. "-->" .. helper)
  local newBody = "<!--\n" .. delteNum

  os.execute("mkdir " .. dirname)
  os.execute('echo "' .. newBody .. '" > ' .. file)
  vim.cmd('e ' .. file)
  require('core.plugins.ghIssue.maps').maps()
end
return ghIssue
local ghIssue = function(issue_number)
  vim.cmd('Cdg')
  local gitRoot = vim.fn.system("git rev-parse --show-toplevel"):gsub('\n', '')
  local dirname = gitRoot .. "/.git/muryp"
  local getDate = os.date():gsub(" ", ""):gsub(":", ""):gsub("%a", "")
  local filename = "/gh-issue-" .. issue_number .. getDate .. ".md"
  local file = dirname .. filename
  local getIssue = vim.fn.system("gh issue view " .. issue_number)
  local _, _, replaceIssue = string.find(getIssue, "(number:\t%d+)")
  local delteNum = getIssue:gsub("number:.+%d\n--.", replaceIssue .. "\n-->")
  local newBody = "<!--\n" .. delteNum

  os.execute("mkdir " .. dirname)
  os.execute('echo "' .. newBody .. '" > ' .. file)
  vim.cmd('e ' .. file)
  require('core.plugins.ghIssue.maps').maps()
end
return ghIssue

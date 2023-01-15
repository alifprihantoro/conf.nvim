local ghIssue = function(issue_number)
  local dirname = "~/.cache/muryp"
  local getDate = os.date():gsub(" ", ""):gsub(":", ""):gsub("%a", "")
  local filename = "/gh-issue-" .. issue_number .. getDate .. ".md"
  local file = dirname .. filename
  local getIssue = vim.api.nvim_command_output('echo system("gh issue view ' .. issue_number .. '")')
  local _, _, replaceIssue = string.find(getIssue, "(number:.+%d)\n--")
  local comment = "\n# <leader><CR> for push\n# and this header just for info (not affect)"
  local delteNum = getIssue:gsub("number:.+%d\n--", replaceIssue .. comment .. "\n--")
  local newBody = "---\n" .. delteNum

  os.execute("mkdir " .. dirname)
  os.execute('echo "' .. newBody .. '" > ' .. file)
  vim.cmd('e ' .. file)
end
return ghIssue

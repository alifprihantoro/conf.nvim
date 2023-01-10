return {
  expand = function(args)
    require('snippy').expand_snippet(args.body) -- For `snippy` users.
  end,
}

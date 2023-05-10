-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    relativenumber = false, -- sets vim.opt.relativenumber
    wrap = true, -- sets vim.opt.wrap
    title = true, -- allow setting the window title
    titlestring = '%(%{expand("%:~:.:h")}%)/%t - AstroNvim', -- window title format
  },
}

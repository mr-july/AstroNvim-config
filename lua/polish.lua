-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

--- Create custom command to toggle the keymap
vim.api.nvim_create_user_command("ToggleKeymap", function()
  if vim.bo.keymap == "" then
    vim.bo.keymap = "deru"
  else
    vim.bo.keymap = ""
  end
  vim.notify(string.format("keymap='%s'", vim.bo.keymap))
end, { desc = "Toggle the keymap (none/'deru')" })

-- Abbreviations:
-- replace the last search string occurrences by numbers 1, 2, 3...
vim.cmd "cabbrev inc let @a=1 \\| %s##\\=''.(@a+setreg('a', @a + 1)).''#g"

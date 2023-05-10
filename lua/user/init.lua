-- The following file was used as a template:
-- https://github.com/AstroNvim/user_example/blob/main/init.lua

return {
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
   
    --- Create custom command to toggle the keymap
    vim.api.nvim_create_user_command(
      'ToggleKeymap',
      function()
        if vim.bo.keymap == "" then
          vim.bo.keymap = "deru"
        else
          vim.bo.keymap = ""
        end
        require("astronvim.utils").notify(
          string.format("keymap='%s'", vim.bo.keymap)
        )
      end,
      { desc = "Toggle the keymap (none/'deru')" }
    )

    -- Custom additions

    -- Abbreviations:
    -- replace the last search string occurrences by numbers 1, 2, 3...
    vim.cmd("cabbrev inc let @a=1 | %s##\\=''.(@a+setreg('a', @a + 1)).''#g")

  end,
}

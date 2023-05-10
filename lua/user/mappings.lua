local toggleKeymapKey = "<F8>"
local toggleKeymap = { "<cmd>ToggleKeymap<cr>", desc = "Toggle the keymap (none/'deru')" }

return {
  -- first key is the mode
  i = {
    [toggleKeymapKey] = toggleKeymap,
    ["<C-s>"] = { "<cmd>update<cr>", desc = "Update the buffer" }
  },
  n = {
    -- disable default mapping to toggle the terminal
    ["<F7>"] = false,
    ["<C-'>"] = false,
    [toggleKeymapKey] = toggleKeymap,
    -- set custom key to toggle the terminal
    ["<F12>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<leader>ba"] = { "ggVG", desc = "Select All" },
    ["<leader>bk"] = toggleKeymap,
    ["<leader>E"] = { "<cmd>Neotree %:p:h<cr>", desc = "Explore relative to buf" },
  },
  t = {
    -- setting a mapping to false will disable it
    ["<F7>"] = false,
    ["<C-'>"] = false,
  },
  v = {
    ["<leader>y"] = { "\"+y", desc = "Yank to Clipboard" },
  }
}

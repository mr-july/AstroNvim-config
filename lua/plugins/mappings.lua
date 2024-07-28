local toggleKeymapKey = "<F8>"
local toggleKeymap = { "<cmd>ToggleKeymap<cr>", desc = "Toggle the keymap (none/'deru')" }

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        i = {
          [toggleKeymapKey] = toggleKeymap,
        },
        n = {
          ["<leader>ba"] = { "ggVG", desc = "Select All" },
          ["<leader>bk"] = toggleKeymap,
          ["<leader>E"] = { "<cmd>Neotree %:p:h<cr>", desc = "Explore relative to buf" },
          [toggleKeymapKey] = toggleKeymap,
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          ["<leader>y"] = { '"+y', desc = "Yank to Clipboard" },
        },
      },
    },
  },
}

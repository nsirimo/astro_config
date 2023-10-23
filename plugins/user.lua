return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre ~/obsidian-vault/**.md",
    "BufNewFile ~/obsidian-vault/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/obsidian-vault",
      },
      {
        name = "work",
        path = "~/obsidian-vault/BLVD",
      },
    },

    -- see below for full list of options 👇
  },
}

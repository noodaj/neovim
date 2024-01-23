-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return {desc = "nvim-tree: " ..desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
  end

  api.config.mappings.default_on_attach(bufnr)
  --[[ vim.keymap.set("n", "<tab>", api.node.open.tab())
  vim.keymap.set("n", "<CR>", api.node.open.tab())
  vim.keymap.set("n", "o", api.node.open.tab()) ]]
end

local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "tabnew" },
  { key = "<C-e>",                        action = "tabnew" },
  { key = {"O"},                          action = "tabnew" },
  { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
  { key = "<C-v>",                        action = "vsplit" },
  { key = "<C-x>",                        action = "split" },
  { key = "<C-t>",                        action = "tabnew", silent = "true" },
  { key = "<Tab>",                        action = "preview" },
  { key = "R",                            action = "refresh" },
  { key = "a",                            action = "create" },
  { key = "d",                            action = "remove" },
  { key = "D",                            action = "trash" },
  { key = "r",                            action = "rename" },
  { key = "<C-r>",                        action = "full_rename" },
  { key = "[c",                           action = "prev_git_item" },
  { key = "]c",                           action = "next_git_item" },
  { key = "-",                            action = "dir_up" },
  { key = "s",                            action = "system_open" },
  { key = "q",                            action = "close" },
  { key = "g?",                           action = "toggle_help" },
  { key = "W",                            action = "collapse_all" },
  { key = "S",                            action = "search_node" },
  { key = "<C-k>",                        action = "toggle_file_info" },
}

require("nvim-tree").setup{
  on_attach = on_attach,
  open_on_tab = true,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

--vim.keymap.set('n', "

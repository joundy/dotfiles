local utils = require "astronvim.utils"
local is_available = utils.is_available

local maps = { i = {}, n = {}, v = {}, t = {} }

local function termcodes(str) return vim.api.nvim_replace_termcodes(str, true, true, true) end

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- return {
--   -- first key is the mode
--   n = {
--     -- second key is the lefthand side of the map
--
--     -- navigate buffer tabs with `H` and `L`
--     -- L = {
--     --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
--     --   desc = "Next buffer",
--     -- },
--     -- H = {
--     --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
--     --   desc = "Previous buffer",
--     -- },
--
--     -- mappings seen under group name "Buffer"
--     ["<leader>bD"] = {
--       function()
--         require("astronvim.utils.status").heirline.buffer_picker(
--           function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
--         )
--       end,
--       desc = "Pick to close",
--     },
--     -- tables with the `name` key will be registered with which-key if it's installed
--     -- this is useful for naming menus
--     ["<leader>b"] = { name = "Buffers" },
--     -- quick save
--     -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
--   },
--   t = {
--     -- setting a mapping to false will disable it
--     -- ["<esc>"] = false,
--   },
-- }

-- NeoTree
if is_available "neo-tree.nvim" then maps.n["<C-n>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" } end

-- Tab
maps.n["<C-l>"] =
  { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" }
maps.n["<C-h>"] = {
  function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
  desc = "Previous buffer",
}

-- Buffer
maps.n["<leader>x"] = { function() require("astronvim.utils.buffer").close() end, desc = "Close buffer" }
maps.n["<leader>X"] = { function() require("astronvim.utils.buffer").close(0, true) end, desc = "Force close buffer" }
maps.n["<leader>bx"] =
  { function() require("astronvim.utils.buffer").close_all(true) end, desc = "Close all buffers except current" }
maps.n["<leader>bX"] = { function() require("astronvim.utils.buffer").close_all() end, desc = "Close all buffers" }

-- Hop
if is_available "hop.nvim" then maps.n["f"] = { ":HopWord <CR>", desc = "Hop search" } end

-- Nvim tree
if is_available "nvim-tree.lua" then
  maps.n["<C-n>"] = {
    function() vim.cmd.NvimTreeToggle "focus" end,
    desc = "Toggle Explorer Focus",
  }
end

-- Telescope
if is_available "telescope.nvim" then
  maps.n["<leader>fa"] = {
    function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end,
    desc = "Find all files",
  }
end

-- Terminal
if is_available "toggleterm.nvim" then
  maps.t["jk"] = { termcodes "<C-\\><C-N>", desc = "   escape terminal mode" }
  maps.t["JK"] = { termcodes "<C-\\><C-N>", desc = "   escape terminal mode" }
  maps.n["<leader>h"] = {
    function()
      if not (vim.bo.filetype == "NvimTree") then vim.cmd.ToggleTerm "size=10 direction=horizontal" end
    end,
    desc = "ToggleTerm horizontal split",
  }
  maps.n["<leader>v"] = {
    function()
      if not (vim.bo.filetype == "NvimTree") then vim.cmd.ToggleTerm "size=80 direction=vertical" end
    end,
    desc = "ToggleTerm horizontal split",
  }
end

-- Git vim-fugitive
if is_available "vim-fugitive" then maps.n["<leader>gf"] = { ":G <cr>", desc = "Open Git Vim Fugitive" } end

-- Rest.nvim
if is_available "rest.nvim" then
  maps.n["<leader>m"] = { function() require("rest-nvim").run() end, desc = "RestNvim" }
end

return maps

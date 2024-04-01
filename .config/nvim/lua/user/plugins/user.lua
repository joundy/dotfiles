return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function(_, opts) require("hop").setup(opts) end,
  },
  { "joundy/neovim-ayu", name = "ayu", lazy = false, priority = 1000 },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("nvim-tree").setup {
        filters = {
          dotfiles = false,
        },
        disable_netrw = true,
        hijack_netrw = true,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = false,
        sync_root_with_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = false,
        },
        view = {
          adaptive_size = false,
          float = {
            -- enable = true,
            -- open_win_config = {
            --   width = 45,
            --   height = 50,
            -- },
          },
        },
        git = {
          enable = true,
          ignore = false,
        },
      }
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function() require("rest-nvim").setup() end,
  },
  -- {
  --   "rest-nvim/rest.nvim",
  --   ft = "http",
  --   lazy = false,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "luarocks.nvim",
  --   },
  --   config = function()
  --     require("rest-nvim").setup {
  --       -- Open request results in a horizontal split
  --       result_split_horizontal = false,
  --       -- Keep the http file buffer above|left when split horizontal|vertical
  --       result_split_in_place = false,
  --       -- Skip SSL verification, useful for unknown certificates
  --       skip_ssl_verification = false,
  --       -- Encode URL before making request
  --       encode_url = false,
  --       -- Highlight request on run
  --       highlight = {
  --         enabled = true,
  --         timeout = 150,
  --       },
  --       result = {
  --         -- toggle showing URL, HTTP info, headers at top the of result window
  --         show_url = true,
  --         -- show the generated curl command in case you want to launch
  --         -- the same request via the terminal (can be verbose)
  --         show_curl_command = true,
  --         show_http_info = true,
  --         show_headers = true,
  --         -- executables or functions for formatting response body [optional]
  --         -- set them to false if you want to disable them
  --         formatters = {
  --           json = "jq",
  --           html = function(body) return vim.fn.system({ "tidy", "-i", "-q", "-" }, body) end,
  --         },
  --       },
  --       -- Jump to request line on run
  --       jump_to_request = false,
  --       env_file = ".env",
  --       custom_dynamic_variables = {},
  --       yank_dry_run = true,
  --     }
  --   end,
  -- },
}

local Util = require("lazyvim.Util")
local trouble = require("trouble.sources.telescope")

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier", "eslint_d" },
        typescript = { "prettier", "eslint_d" },
        vue = { "prettier", "eslint_d" },
        python = { "black" },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    dependencies = {
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        path_display = {
          truncate = 1,
        },
      },
    },
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ layout_strategy = "vertical", layout_config = { width = 125 } })
        end,
        desc = "Find Files (root dir)",
      },
      {
        "<leader>fF",
        function()
          require("telescope.builtin").find_files({
            layout_strategy = "vertical",
            layout_config = { width = 125 },
            cwd = false,
          })
        end,
        desc = "Find Files (cwd)",
      },
      {
        "<leader>fb",
        "<cmd>Telescope buffers sort_mru=true<CR>",
        desc = "Find Buffers",
      },
      { "<c-i>", trouble.open, desc = "Open in trouble" },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_by_name = {
            "node_modules",
            "venv",
          },
          never_show = {
            "__pycache__",
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "python",
        "vue",
        "markdown",
      })
    end,
  },
}

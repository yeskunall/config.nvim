return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
      {
        "<leader>z",
        function()
          Snacks.zen()
        end,
        desc = "Toggle Zen Mode",
      },
    },
    opts = {
      lazygit = { enabled = true },
      scroll = { enabled = true },
      zen = { enabled = true },
    },
  },

  {
    "hrsh7th/cmp-nvim-lsp",
    sources = {
      { name = "nvim_lsp" },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    filters = {
      dotfiles = true,
      enable = true,
      git_ignored = true,
    },
  },

  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    event = { "BufWritePre" },
    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
      default_format_opts = {
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
      },
      format_on_save = { timeout_ms = 500 },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "astro-language-server",
        "biome",
        "css-lp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "stylua",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "css",
        "dockerfile",
        "editorconfig",
        "gitignore",
        "go",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "lua",
        "markdown_inline",
        "sql",
        "ssh_config",
        "typescript",
        "xml",
      },
      highlight = { enable = true },
      sync_install = false,
    },
  },
}

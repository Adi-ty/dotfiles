return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "php",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "python",
        "rust",
        "scss",
        "sql",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "dockerfile",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}

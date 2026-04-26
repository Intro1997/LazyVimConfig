return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      markdownlint = {
        args = { "--config", os.getenv("HOME") .. "/.markdownlint.json", "--fix", "$FILENAME" },
      },
    },
  },
}

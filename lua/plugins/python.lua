-- pyright 不会自动发现 uv 建的 .venv，必须显式告诉它。
-- venvPath 相对 workspace root，uv 默认就是项目根下的 .venv。
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              venvPath = ".",
              venv = ".venv",
            },
          },
        },
      },
    },
  },
}

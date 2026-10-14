return {
  "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "BurntSushi/ripgrep" },
      { "nvim-tree/nvim-web-devicons" },
      { "sharkdp/fd" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    }
}

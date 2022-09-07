local packer = require("packer")
packer.startup(
  function(use)
    use 'wbthomason/packer.nvim'

    --------------------- colorschemes --------------------
    use("folke/tokyonight.nvim") -- tokyonight

    -------------------------- plugins -------------------------------------------
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })  -- nvim-tree
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})  -- bufferline
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })  -- lualine
    use("arkav/lualine-lsp-progress")  -- lualine 
    use({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })  -- telescope
    use("glepnir/dashboard-nvim")  -- dashboard-nvim
    use("ahmedkhalf/project.nvim")  -- project
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })  -- treesitter
    use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
    use({ "neovim/nvim-lspconfig"})  -- lspconfig
    use("fatih/vim-go")  -- golang
    use({"neoclide/coc.nvim", branch = "release"})  -- coc.vim
    use("windwp/nvim-autopairs") -- autopairs
    use("simrat39/rust-tools.nvim")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    use("numToStr/Comment.nvim")
end)

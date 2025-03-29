-- ~/.config/nvim/lua/plugins/init.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'



    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}

    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}

    use "xiyaowong/transparent.nvim"

    --
    use 'dense-analysis/ale'
    use 'powerman/vim-plugin-ruscmd'
    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use 'nvim-lua/plenary.nvim'

    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end,
    }

    use{
        "madskjeldgaard/cheeky-snippets.nvim",
        requires = {
            "L3MON4D3/LuaSnip"
        },
        config = function()
            local cheeky = require("cheeky")
            cheeky.setup({
                langs = {
                    all = true,
                    lua = true,
                    cpp = true,
                    asm = true,
                    cmake = true,
                    markdown = true,
                    supercollider = true
                },
            })
        end
    }
    --airline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --



    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'filNaj/tree-setter'


    --theme
    use "rebelot/kanagawa.nvim"
    use "scottmckendry/cyberdream.nvim"
    --

    use "tpope/vim-fugitive"
    use { 'michaelb/sniprun', run = 'sh ./install.sh'}


    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use "petertriho/cmp-git"

    -- ...
end)

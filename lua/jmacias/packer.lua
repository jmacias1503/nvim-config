-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope plugin
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Gruvbox Theme
    use({
        'ellisonleao/gruvbox.nvim',
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })

    -- Treesitter formatting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use("nvim-treesitter/playground")

    -- UndoTree for keeping record of changes in a file
    use('mbbill/undotree')

    -- LSP for an IDE-like experience
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'},
        }
    }

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'doom',
                config = {
                    header = {
                        [[=================     ===============     ===============   ========  ========]],
                        [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
                        [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
                        [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
                        [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
                        [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
                        [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
                        [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
                        [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
                        [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
                        [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
                        [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
                        [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
                        [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
                        [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
                        [[||.=='    _-'                                                     `' |  /==.||]],
                        [[=='    _-'                        N E O V I M                         \/   `==]],
                        [[\   _-'                                                                `-_   /]],
                        [[`''                                                                      ``']],
                    }, --your header
                    center = {
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Open Agenda',
                            desc_hl = 'String',
                            key = 'g',
                            keymap = 'SPC o a',
                            key_hl = 'Number',
                            action = 'Telescope'
                        },
{
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Open wiki',
                            desc_hl = 'String',
                            key = 'd',
                            keymap = 'SPC w w',
                            key_hl = 'Number',
                            action = 'VimwikiIndex',
                        },
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Search File',
                            desc_hl = 'String',
                            key = 'n',
                            keymap = 'SPC e f',
                            key_hl = 'Number',
                            action = 'NERDTreeToggle',
                        }
                    },
                    footer = {
                        [[                 ▄█▄                 ]],
                        [[                ▄███▄                ]],
                        [[               ▄█████▄               ]],
                        [[              ▄███████▄              ]],
                        [[             ▄ ▀▀██████▄             ]],
                        [[            ▄██▄▄ ▀█████▄            ]],
                        [[           ▄█████████████▄           ]],
                        [[          ▄███████████████▄          ]],
                        [[         ▄█████████████████▄         ]],
                        [[        ▄███████████████████▄        ]],
                        [[       ▄█████████▀▀▀▀████████▄       ]],
                        [[      ▄████████▀      ▀███████▄      ]],
                        [[     ▄█████████        ████▀▀██▄     ]],
                        [[    ▄██████████        █████▄▄▄      ]],
                        [[   ▄██████████▀        ▀█████████▄   ]],
                        [[  ▄██████▀▀▀              ▀▀██████▄  ]],
                        [[ ▄███▀▀                       ▀▀███▄ ]],
                        [[▄▀▀                               ▀▀▄]],
                        [[         Yes, I use arch btw.        ]],
                    }  --your footer
                }

            }
        end,

        requires = {'nvim-tree/nvim-web-devicons'}
    }

    --NerdTree file manager
    use {
        'preservim/nerdtree',
    }

    -- Indenting lines
    use "lukas-reineke/indent-blankline.nvim"

    -- Hex preview colors

    use {
        'norcalli/nvim-colorizer.lua'
    }

    -- Icons for plugins
    use 'ryanoasis/vim-devicons'

    -- Orgmode for neovim
    use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup_ts_grammar{}
        require('orgmode').setup{
            org_agenda_files = {'/home/jmacias8075/Docs/Second Brain/org/*'},
            org_default_notes_file = '~/Docs/Second Brain/org/default.org',
        }
    end
}
-- Autopairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- Vimtex
use 'lervag/vimtex'

-- Trouble viewing
use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

--Vimwiki
use {
    'vimwiki/vimwiki',
    config = function ()
        vim.g.vimwiki_list = {{path = '~/Docs/Mywiki', syntax = 'markdown', ext = '.md'}}
        vim.g.vimwiki_global_ext = 0
    end
}

-- Conceal para markdown
use {
    'ixru/nvim-markdown',
    config = function ()
        vim.g.vim_markdown_conceal = 2
    end
}

-- Debugging adapter protocol
use 'mfussenegger/nvim-dap'

end)

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
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

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
            {'rafamadriz/friendly-snippets'}, -- Optional
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
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Find File           ',
                            desc_hl = 'String',
                            key = 'b',
                            keymap = 'SPC f f',
                            key_hl = 'Number',
                            action = 'lua print(2)'
                        },
                        {
                            icon = ' ',
                            desc = 'Find Dotfiles',
                            key = 'f',
                            keymap = 'SPC f d',
                            action = 'lua print(3)'
                        },
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
    use 'preservim/nerdtree'

    -- Indenting lines
    use "lukas-reineke/indent-blankline.nvim"

    -- Hex preview colors

    use {
        'norcalli/nvim-colorizer.lua'
    }

end)

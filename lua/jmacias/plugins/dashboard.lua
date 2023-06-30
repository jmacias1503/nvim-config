--return {
--   "glepnir/dashboard-nvim",
--   lazy = false,
--   config = function ()
--      require('dashboard').setup {
--         theme = 'doom',
--         config = {
--            header = {
--               [[=================     ===============     ===============   ========  ========]],
--               [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
--               [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
--               [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
--               [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
--               [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
--               [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
--               [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
--               [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
--               [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
--               [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
--               [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
--               [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
--               [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
--               [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
--               [[||.=='    _-'                                                     `' |  /==.||]],
--               [[=='    _-'                        N E O V I M                         \/   `==]],
--               [[\   _-'                                                                `-_   /]],
--               [[`''                                                                      ``']],
--            },
--            center = {
--               {
--                  icon = '   ',
--                  icon_hl = 'Title',
--                  desc = 'Open Agenda',
--                  desc_hl = 'String',
--                  key = 'g',
--                  keymap = 'SPC o a',
--                  key_hl = 'Number',
--                  action = 'Telescope'
--               },
--               {
--                  icon = '   ',
--                  icon_hl = 'Title',
--                  desc = 'Capture',
--                  desc_hl = 'String',
--                  key = 'p',
--                  keymap = 'SPC o c',
--                  key_hl = 'Number',
--                  action = 'Telescope'
--               },
--               {
--                  icon = '   ',
--                  icon_hl = 'Title',
--                  desc = 'Open wiki',
--                  desc_hl = 'String',
--                  key = 'd',
--                  keymap = 'SPC w w',
--                  key_hl = 'Number',
--                  action = 'VimwikiIndex',
--               },
--               {
--                  icon = '   ',
--                  icon_hl = 'Title',
--                  desc = 'Search File',
--                  desc_hl = 'String',
--                  key = 'n',
--                  keymap = 'SPC f f',
--                  key_hl = 'Number',
--                  action = 'Telescope find_files',
--               },
--            },
--            footer = {
--[[ ██░ ██ ▒█████  █     █░   ▄▄▄█████▓██░ ██▓█████      ██████    ██ ▄████▄  ██ ▄█▀   ▓█████▄ ▒█████      ██▓   ▓█████▒██   ██▒██▄▄▄█████▓]],
--[[▓██░ ██▒██▒  ██▓█░ █ ░█░   ▓  ██▒ ▓▓██░ ██▓█   ▀    ▓██   ▒██  ▓██▒██▀ ▀█  ██▄█▒    ▒██▀ ██▒██▒  ██▒   ▓██▒   ▓█   ▀▒▒ █ █ ▒▓██▓  ██▒ ▓▒]],
--[[▒██▀▀██▒██░  ██▒█░ █ ░█    ▒ ▓██░ ▒▒██▀▀██▒███      ▒████ ▓██  ▒██▒▓█    ▄▓███▄░    ░██   █▒██░  ██▒   ▒██▒   ▒███  ░░  █   ▒██▒ ▓██░ ▒░]],
--[[░▓█ ░██▒██   ██░█░ █ ░█    ░ ▓██▓ ░░▓█ ░██▒▓█  ▄    ░▓█▒  ▓▓█  ░██▒▓▓▄ ▄██▓██ █▄    ░▓█▄   ▒██   ██░   ░██░   ▒▓█  ▄ ░ █ █ ▒░██░ ▓██▓ ░ ]],
--[[░▓█▒░██░ ████▓▒░░██▒██▓      ▒██▒ ░░▓█▒░██░▒████▒   ░▒█░  ▒▒█████▓▒ ▓███▀ ▒██▒ █▄   ░▒████▓░ ████▓▒░   ░██░   ░▒████▒██▒ ▒██░██░ ▒██▒ ░ ]],
--[[ ▒ ░░▒░░ ▒░▒░▒░░ ▓░▒ ▒       ▒ ░░   ▒ ░░▒░░░ ▒░ ░    ▒ ░  ░▒▓▒ ▒ ▒░ ░▒ ▒  ▒ ▒▒ ▓▒    ▒▒▓  ▒░ ▒░▒░▒░    ░▓     ░░ ▒░ ▒▒ ░ ░▓ ░▓   ▒ ░░   ]],
--[[ ▒ ░▒░ ░ ░ ▒ ▒░  ▒ ░ ░         ░    ▒ ░▒░ ░░ ░  ░    ░    ░░▒░ ░ ░  ░  ▒  ░ ░▒ ▒░    ░ ▒  ▒  ░ ▒ ▒░     ▒ ░    ░ ░  ░░   ░▒ ░▒ ░   ░    ]],
--[[ ░  ░░ ░ ░ ░ ▒   ░   ░       ░      ░  ░░ ░  ░       ░ ░   ░░░ ░ ░░       ░ ░░ ░     ░ ░  ░░ ░ ░ ▒      ▒ ░      ░   ░    ░  ▒ ░ ░      ]],
--[[ ░  ░  ░   ░ ░     ░                ░  ░  ░  ░  ░            ░    ░ ░     ░  ░         ░       ░ ░      ░        ░  ░░    ░  ░          ]],
--[[                                                                  ░                  ░                                                  ]],
--[[                                                          ██▒   █▓██▓███▄ ▄███▓                                                         ]],
--[[                                                         ▓██░   █▓██▓██▒▀█▀ ██▒                                                         ]],
--[[                                                          ▓██  █▒▒██▓██    ▓██░                                                         ]],
--[[                                                           ▒██ █░░██▒██    ▒██                                                          ]],
--[[                                                            ▒▀█░ ░██▒██▒   ░██▒                                                         ]],
--[[                                                            ░ ▐░ ░▓ ░ ▒░   ░  ░                                                         ]],
--[[                                                            ░ ░░  ▒ ░  ░      ░                                                         ]],
--[[                                                              ░░  ▒ ░      ░                                                            ]],
--[[                                                               ░  ░        ░                                                            ]],
--[[                                                              ░                                                                         ]],
--            }
--         }
--      }
--   end,
--
--   dependencies = {
--      'nvim-tree/nvim-web-devicons'
--   }
--}

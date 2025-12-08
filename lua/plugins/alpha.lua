return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Table de bannières
    local headers = {

      -- Banner 1 (AtmoVim)
      {
        [[                                                                       ]],
        [[  █████╗ ████████╗███╗   ███╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
        [[ ██╔══██╗╚══██╔══╝████╗ ████║██╔═══██╗██║   ██║██║████╗ ████║ ]],
        [[ ███████║   ██║   ██╔████╔██║██║   ██║██║   ██║██║██╔████╔██║ ]],
        [[ ██╔══██║   ██║   ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
        [[ ██║  ██║   ██║   ██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
        [[ ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝ ╚═════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
        [[                                                                       ]],
        [[                [ AtmoVim Configuration ]                             ]],
        [[                                                                       ]],
      },

      -- Banner 2 (Pieuvre insomniaque)
      {
        [[												___	]],
        [[											,o88888	]],
        [[										,o8888888'	]],
        [[				  ,:o:o:oooo.        ,8O88Pd8888"	]],
        [[			  ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"	]],
        [[			,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"		]],
        [[			, ..:.::o:ooOoOOOO8OOOOo.FdO8O8"		]],
        [[		  , ..:.::o:ooOoOO8O888O8O,COCOO"			]],
        [[		 , . ..:.::o:ooOoOOOO8OOOOCOCO"			]],
        [[		  . ..:.::o:ooOoOoOO8O8OCCCC"o				]],
        [[			 . ..:.::o:ooooOoCoCCC"o:o				]],
        [[			 . ..:.::o:o:,cooooCo"oo:o:			]],
        [[		  `   . . ..:.:cocoooo"'o:o:::'			]],
        [[		  .`   . ..::ccccoc"'o:o:o:::'				]],
        [[		 :.:.    ,c:cccc"':.:.:.:.:.				]],
        [[		..:.:"'`::::c:"'..:.:.:.:.:.'				]],
        [[	 ...:.'.:.::::"'    . . . . .					]],
        [[	.. . ....:."' `   .  . . ''					]],
        [[ . . . ...."'										]],
        [[ .. . ."'     									]],
        [[.													]],
      },
	}
    -- Random
    math.randomseed(os.time())
    dashboard.section.header.val = headers[math.random(#headers)]

    -- Boutons
    dashboard.section.buttons.val = {
      dashboard.button("e", "📁  Nouveau fichier", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "🔍  Rechercher fichiers", ":Telescope find_files <CR>"),
      dashboard.button("r", "📚  Fichiers récents", ":Telescope oldfiles <CR>"),
      dashboard.button("<space>e", "🌳  Explorer fichiers", ":Neotree toggle <CR>"),
      dashboard.button("t", "💻  Terminal", ":ToggleTerm <CR>"),
      dashboard.button("c", "⚙️  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
      dashboard.button("q", "❌  Quitter", ":qa <CR>"),
    }

    -- Footer
    dashboard.section.footer.val = {
      "Développée avec ❤️ par Unam3dd et 0x7c00",
    }

    dashboard.config.opts.noautocmd = true
    alpha.setup(dashboard.config)
  end,
}


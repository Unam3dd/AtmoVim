-- Themes

-- Terminal gui colors
vim.cmd[[set termguicolors]]

-- Transparent
vim.cmd[[let g:transparent_enabled = v:true]]

-- Gruvbox
-- vim.cmd[[colorscheme gruvbox]]

-- EverBlush
--vim.cmd[[colorscheme everblush]]

-- Poimandres
--vim.cmd[[colorscheme poimandres]]

-- Catppuccino
vim.cmd[[colorscheme catppuccin]]
--vim.cmd[[colorscheme catppuccin-latte]]
--vim.cmd[[colorscheme catppuccin-frappe]]
--vim.cmd[[colorscheme catppuccin-macchiato]]
--vim.cmd[[colorscheme catppuccin-mocha]]
--

-- Tokyo Theme
--vim.cmd[[colorscheme tokyonight-night]]
--vim.cmd[[colorscheme tokyonight-storm]]
--vim.cmd[[colorscheme tokyonight-day]]
--vim.cmd[[colorscheme tokyonight-moon]]
--vim.cmd[[colorscheme miasma]]

-- ============================================================================
-- NOUVEAUX THÈMES AJOUTÉS
-- ============================================================================

-- Rose Pine
--vim.cmd[[colorscheme rose-pine]]
--vim.cmd[[colorscheme rose-pine-dawn]]
--vim.cmd[[colorscheme rose-pine-moon]]

-- Kanagawa
--vim.cmd[[colorscheme kanagawa]]
--vim.cmd[[colorscheme kanagawa-wave]]
--vim.cmd[[colorscheme kanagawa-dragon]]
--vim.cmd[[colorscheme kanagawa-lotus]]

-- Edge
--vim.cmd[[colorscheme edge]]
--vim.cmd[[colorscheme edge-dark]]
--vim.cmd[[colorscheme edge-light]]

-- Sonokai
--vim.cmd[[colorscheme sonokai]]
--vim.cmd[[colorscheme sonokai-shusia]]
--vim.cmd[[colorscheme sonokai-atlantis]]
--vim.cmd[[colorscheme sonokai-andromeda]]
--vim.cmd[[colorscheme sonokai-maia]]

-- Everforest
--vim.cmd[[colorscheme everforest]]
--vim.cmd[[colorscheme everforest-light]]
--vim.cmd[[colorscheme everforest-soft]]
--vim.cmd[[colorscheme everforest-medium]]
--vim.cmd[[colorscheme everforest-hard]]

-- Nightfox
--vim.cmd[[colorscheme nightfox]]
--vim.cmd[[colorscheme dayfox]]
--vim.cmd[[colorscheme dawnfox]]
--vim.cmd[[colorscheme duskfox]]
--vim.cmd[[colorscheme nordfox]]
--vim.cmd[[colorscheme terafox]]

-- OneDark
--vim.cmd[[colorscheme onedark]]
--vim.cmd[[colorscheme onedark_dark]]
--vim.cmd[[colorscheme onedark_light]]

-- Material
--vim.cmd[[colorscheme material]]
--vim.cmd[[colorscheme material-deep-ocean]]
--vim.cmd[[colorscheme material-lighter]]
--vim.cmd[[colorscheme material-darker]]
--vim.cmd[[colorscheme material-palenight]]
--vim.cmd[[colorscheme material-oceanic]]
--vim.cmd[[colorscheme material-peacock]]

-- GitHub Theme
--vim.cmd[[colorscheme github_dark]]
--vim.cmd[[colorscheme github_dark_dimmed]]
--vim.cmd[[colorscheme github_dark_colorblind]]
--vim.cmd[[colorscheme github_dark_tritanopia]]
--vim.cmd[[colorscheme github_light]]
--vim.cmd[[colorscheme github_light_colorblind]]
--vim.cmd[[colorscheme github_light_tritanopia]]

-- Gruvbox Baby
--vim.cmd[[colorscheme gruvbox-baby]]
--vim.cmd[[colorscheme gruvbox-baby-soft]]
--vim.cmd[[colorscheme gruvbox-baby-medium]]
--vim.cmd[[colorscheme gruvbox-baby-hard]]

-- Dracula
--vim.cmd[[colorscheme dracula]]

-- OneDark Vim
--vim.cmd[[colorscheme onedark]]

-- VSCode Dark
--vim.cmd[[colorscheme codedark]]

-- Ayu
--vim.cmd[[colorscheme ayu]]
--vim.cmd[[colorscheme ayu-dark]]
--vim.cmd[[colorscheme ayu-light]]
--vim.cmd[[colorscheme ayu-mirage]]

-- PaperColor
--vim.cmd[[colorscheme PaperColor]]
--vim.cmd[[colorscheme PaperColor-Dark]]
--vim.cmd[[colorscheme PaperColor-Light]]

-- Solarized
--vim.cmd[[colorscheme solarized]]
--vim.cmd[[colorscheme solarized8]]
--vim.cmd[[colorscheme solarized8_flat]]
--vim.cmd[[colorscheme solarized8_low]]
--vim.cmd[[colorscheme solarized8_high]]

-- Base16
--vim.cmd[[colorscheme base16-default-dark]]
--vim.cmd[[colorscheme base16-default-light]]
--vim.cmd[[colorscheme base16-eighties]]
--vim.cmd[[colorscheme base16-embers]]
--vim.cmd[[colorscheme base16-google]]
--vim.cmd[[colorscheme base16-grayscale]]
--vim.cmd[[colorscheme base16-harmonic16]]
--vim.cmd[[colorscheme base16-hopscotch]]
--vim.cmd[[colorscheme base16-isotope]]
--vim.cmd[[colorscheme base16-macintosh]]
--vim.cmd[[colorscheme base16-marrakesh]]
--vim.cmd[[colorscheme base16-mocha]]
--vim.cmd[[colorscheme base16-monokai]]
--vim.cmd[[colorscheme base16-ocean]]
--vim.cmd[[colorscheme base16-oceanicnext]]
--vim.cmd[[colorscheme base16-paraiso]]
--vim.cmd[[colorscheme base16-pop]]
--vim.cmd[[colorscheme base16-railscasts]]
--vim.cmd[[colorscheme base16-shapeshifter]]
--vim.cmd[[colorscheme base16-summerfruit]]
--vim.cmd[[colorscheme base16-tomorrow]]
--vim.cmd[[colorscheme base16-twilight]]

-- ============================================================================
-- NOUVEAUX THÈMES RÉCEMMENT AJOUTÉS
-- ============================================================================

-- Nightfly / Moonfly
--vim.cmd[[colorscheme nightfly]]
--vim.cmd[[colorscheme moonfly]]

-- VSCode Theme
--vim.cmd[[colorscheme vscode]]

-- Monokai Pro
--vim.cmd[[colorscheme monokai-pro]]
--vim.cmd[[colorscheme monokai-pro-classic]]
--vim.cmd[[colorscheme monokai-pro-machine]]
--vim.cmd[[colorscheme monokai-pro-octagon]]
--vim.cmd[[colorscheme monokai-pro-ristretto]]
--vim.cmd[[colorscheme monokai-pro-spectrum]]

-- ============================================================================
-- FONCTION POUR CHANGER DE THÈME FACILEMENT
-- ============================================================================

-- Vous pouvez utiliser cette fonction pour changer de thème rapidement
-- :lua change_theme("nom_du_theme")
function change_theme(theme_name)
  vim.cmd("colorscheme " .. theme_name)
  print("Thème changé vers: " .. theme_name)
end

-- ============================================================================
-- LISTE DES THÈMES DISPONIBLES
-- ============================================================================
--[[
THÈMES SOMBRES:
- gruvbox
- everblush
- catppuccin-mocha
- catppuccin-macchiato
- catppuccin-frappe
- tokyonight-night
- tokyonight-storm
- tokyonight-moon
- rose-pine
- rose-pine-moon
- kanagawa
- kanagawa-wave
- kanagawa-dragon
- nightfox
- duskfox
- nordfox
- terafox
- material-darker
- material-deep-ocean
- material-oceanic
- material-palenight
- github_dark
- github_dark_dimmed
- sonokai
- edge
- ayu-dark
- ayu-mirage
- onedark
- dracula
- nightfly
- moonfly
- vscode
- monokai-pro
- miasma

THÈMES CLAIRS:
- catppuccin-latte
- tokyonight-day
- rose-pine-dawn
- kanagawa-lotus
- dayfox
- dawnfox
- material-lighter
- github_light
- ayu-light
- edge-light

Pour changer de thème, décommentez la ligne correspondante ci-dessus
ou utilisez la fonction: :lua change_theme("nom_du_theme")
--]]

let s:p = {'normal': {}, 'insert': {}, 'visual': {}, 'replace': {}, 'inactive': {}, 'tabline': {}}

" color palette
let s:black = {
    \   'dark': {
    \     'gui': '#282a2e',
    \     'cli': 0
    \   },
    \   'light': {
    \     'gui': '#373b41',
    \     'cli': 8
    \   }
    \ }
let s:red = {
    \   'dark': {
    \     'gui': '#a54242',
    \     'cli': 1
    \   },
    \   'light': {
    \     'gui': '#cc6666',
    \     'cli': 9
    \   }
    \ }
let s:green = {
    \   'dark': {
    \     'gui': '#8c9440',
    \     'cli': 2
    \   },
    \   'light': {
    \     'gui': '#b5bd68',
    \     'cli': 10
    \   }
    \ }
let s:yellow = {
    \   'dark': {
    \     'gui': '#de935f',
    \     'cli': 3
    \   },
    \   'light': {
    \     'gui': '#f0c674',
    \     'cli': 11
    \   }
    \ }
let s:blue = {
    \   'dark': {
    \     'gui': '#5f819d',
    \     'cli': 4
    \   },
    \   'light': {
    \     'gui': '#81a2be',
    \     'cli': 12
    \   }
    \ }
let s:magenta = {
    \   'dark': {
    \     'gui': '#85678f',
    \     'cli': 5
    \   },
    \   'light': {
    \     'gui': '#b294bb',
    \     'cli': 13
    \   }
    \ }
let s:cyan = {
    \   'dark': {
    \     'gui': '#5e8d87',
    \     'cli': 6
    \   },
    \   'light': {
    \     'gui': '#8abeb7',
    \     'cli': 14
    \   }
    \ }
let s:white = {
    \   'dark': {
    \     'gui': '#707880',
    \     'cli': 7
    \   },
    \   'light': {
    \     'gui': '#c5c8c6',
    \     'cli': 15
    \   }
    \ }

" [[guifg, guibg, ctermfg, ctermbg], ...]

" statusline base
let s:p.normal.middle = [
    \ [s:white.dark.gui, s:black.dark.gui, s:white.dark.cli, s:black.dark.cli],
    \ ]
let s:p.normal.right = [
    \ [s:black.light.gui, s:white.dark.gui, s:black.light.cli, s:white.dark.cli],
    \ [s:white.dark.gui, s:black.light.gui, s:white.dark.cli, s:black.light.cli],
    \ [s:white.dark.gui, s:black.dark.gui, s:white.dark.cli, s:black.dark.cli],
    \ ]

" normal
let s:p.normal.left = [
    \ [s:black.light.gui, s:green.dark.gui, s:black.light.cli, s:green.dark.cli],
    \ [s:white.dark.gui, s:black.light.gui, s:white.dark.cli, s:black.light.cli],
    \ ]

" insert
let s:p.insert.left = [
    \ [s:black.light.gui, s:yellow.dark.gui, s:black.light.cli, s:yellow.dark.cli],
    \ [s:white.dark.gui, s:black.light.gui, s:white.dark.cli, s:black.light.cli],
    \ ]

" visual
let s:p.visual.left = [
    \ [s:black.light.gui, s:cyan.dark.gui, s:black.light.cli, s:cyan.dark.cli],
    \ [s:white.dark.gui, s:black.light.gui, s:white.dark.cli, s:black.light.cli],
    \ ]

" replace
let s:p.replace.left = [
    \ [s:black.light.gui, s:magenta.dark.gui, s:black.light.cli, s:magenta.dark.cli],
    \ [s:white.dark.gui, s:black.light.gui, s:white.dark.cli, s:black.light.cli],
    \ ]

" inactive
let s:p.inactive.middle = [
    \ [s:black.light.gui, s:black.dark.gui, s:black.light.cli, s:black.dark.cli],
    \ ]
let s:p.inactive.left = s:p.inactive.middle
let s:p.inactive.right = s:p.inactive.middle

" tabline colorscheme
let s:p.tabline.tabsel = [
    \ [s:black.dark.gui, s:white.dark.gui, s:black.dark.cli, s:white.dark.cli],
    \ ]
let s:p.tabline.middle = [
    \ [s:white.dark.gui, s:black.dark.gui, s:white.dark.cli, s:black.dark.cli],
    \ ]
let s:p.tabline.left = s:p.tabline.middle
let s:p.tabline.right = s:p.tabline.middle

" subscribe
let lightline#colorscheme#hybrid#palette = s:p

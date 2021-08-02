require'specs'.setup {
    show_jumps = true,
    min_jump = 3,
    popup = {
        delay_ms = 0,
        inc_ms = 10,
        blend = 10,
        width = 10,
        winhl = 'Cursor',
        fader = require('specs').empty_fader,
        resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ifnore_buftypes = {
        nofile = true,
    },
}

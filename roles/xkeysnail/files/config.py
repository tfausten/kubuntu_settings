# -*- coding: utf-8 -*-

from xkeysnail.transform import (
    Key,
    K,
    define_keymap,
    define_modmap,
)

define_keymap(None, {
    K('Alt-h'): Key.LEFT,
    K('Alt-j'): Key.DOWN,
    K('Alt-k'): Key.UP,
    K('Alt-l'): Key.RIGHT,
    K('Alt-i'): Key.HOME,
    K('Alt-o'): Key.END,
}, 'Vim-like cursor')

define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL
})



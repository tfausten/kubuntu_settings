from xkeysnail.transform import (
    Key,
    K,
    define_keymap,
    define_modmap,
)

define_keymap(
    None,
    {
        K("Ctrl-h"): Key.LEFT,
        K("Ctrl-j"): Key.DOWN,
        K("Ctrl-k"): Key.UP,
        K("Ctrl-l"): Key.RIGHT,
        K("Shift-Space"): Key.BACKSPACE,
        # K('Ctrl-i'): Key.HOME,
        # K('Ctrl-o'): Key.END,
    },
    "Vim-like cursor",
)

define_modmap({Key.CAPSLOCK: Key.LEFT_CTRL})

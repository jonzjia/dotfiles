import sys
sys.path.insert(0, '/Applications/Zephyros.app/Contents/Resources/libs/')
import zephyros

@zephyros.zephyros

def myscript():

    NUDGE_FACTOR = 50

    def nudge_h():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.x -= NUDGE_FACTOR
        win.set_frame(f)

    def nudge_j():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.y += NUDGE_FACTOR
        win.set_frame(f)

    def nudge_k():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.y -= NUDGE_FACTOR
        win.set_frame(f)

    def nudge_l():
        win = zephyros.api.focused_window()
        f = win.frame()
        f.x += NUDGE_FACTOR
        win.set_frame(f)

    def show_window_title():
        zephyros.api.alert(zephyros.api.focused_window().title())

    zephyros.api.bind('D', ['Cmd', 'Ctrl'], show_window_title)

    cmdctrl = ['Cmd', 'Ctrl']

    zephyros.api.bind('H', cmdctrl, nudge_h)
    zephyros.api.bind('J', cmdctrl, nudge_j)
    zephyros.api.bind('K', cmdctrl, nudge_k)
    zephyros.api.bind('L', cmdctrl, nudge_l)


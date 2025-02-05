import atexit
import os
import readline
import rlcompleter

history = os.path.expanduser("~/.pyhistory")

def save_history(path=history):
    import readline
    readline.write_history_file(path)

if os.path.exists(history):
    readline.set_history_length(10000)
    readline.read_history_file(history)

atexit.register(save_history)

readline.parse_and_bind('tab: complete')

del atexit, readline, save_history, history

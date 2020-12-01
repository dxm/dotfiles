import atexit
import os
import readline
import rlcompleter

historyPath = os.path.expanduser("~/.pyhistory")

def save_history(historyPath=historyPath):
    import readline
    readline.write_history_file(historyPath)

if os.path.exists(historyPath):
    readline.set_history_length(10000)
    readline.read_history_file(historyPath)

atexit.register(save_history)

readline.parse_and_bind('tab: complete')

del atexit, readline, save_history, historyPath

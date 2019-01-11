from time import strftime
import os
c = get_config()

logfilename = strftime('ipython_log_%Y-%m-%d{}'.format('.py'))
logfilepath = os.path.join(os.path.expanduser('~'),
                           '.ipython', 'logs', logfilename)
c.TerminalInteractiveShell.logappend = logfilepath
c.TerminalInteractiveShell.logstart = True

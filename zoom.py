import sys
import os
import re
r = r"[/](\d+)[?]pwd=(.+)"

zoomurl = sys.argv[1]
zoomid, zoompass = re.findall(r, zoomurl, re.MULTILINE)[0]
cmd = f'zoommtg://zoom.us/join?confno={zoomid}&{zoompass}'

os.system(f'open {cmd}')

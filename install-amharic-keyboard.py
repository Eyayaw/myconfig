# install-amharic-keyboard
from requests_html import HTMLSession
import os
url = "https://keyman.com/keyboards/install/gff_amharic"
session = HTMLSession()
res = session.get(url)
download_link = res.html.find("#step2 > a", first=True).attrs['href']
fname = f'~/Downloads/gff_amharic.kmp'  # {os.path.basename(download_link)}
os.system(f'curl "{download_link}" --output {fname}')
os.system(f'open {fname}')

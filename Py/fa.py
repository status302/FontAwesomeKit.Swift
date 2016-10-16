#!/usr/bin/python
#coding: utf-8

import re
import urllib

def getHtml(url):
	page = urllib.urlopen(url)
	html = page.read()
	return html
def getStr(html):
	reg = r'xf[0-9\w]{3}'
#	reg = r' {6}fa\-[\-\w]+'
	str = re.compile(reg)
	strList = re.findall(str, html)
	return strList
	
	
html = getHtml("http://fontawesome.io/cheatsheet/")
print getStr(html)
# <div class="col-md-4 col-sm-6 col-lg-3">            <i class="fa fa-fw" aria-hidden="true" title="Copy to use briefcase"></i>      fa-briefcase            <span class="text-muted">[&amp;#xf0b1;]</span>    </div>  [\t\w\-\<\>\;\#\&\d]+</div>
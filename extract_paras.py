#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import csv
import bs4
import re

if len(sys.argv) <= 1:
    sys.exit()

f = open(sys.argv[1], "r")

s = bs4.BeautifulSoup(f.read().replace("&nbsp;"," "))

#holder = s.select("p.Eng-text") # 2007 & 2008 & 2009
#holder = s.select("div") # 2010
#holder = s.select(".style1") # 2011
#holder = s.select(".MsoNormal") # 2012
holder = s.select("p") # 2010 & 2013
'''
holder = s.body.contents[0]
try:
    if holder.contents[0].name == "div":
        holder = holder.contents[0]
except:
    pass
try:
    if holder.contents[1].name == "table":
        holder = holder.contents[1].contents[1].contents[1]
except:
    pass
try:
    if holder.name == "table":
        holder = holder.contents[1].contents[1]
except:
    pass
'''
accumltr = list()
for el in holder:
    try:
        txt = el.text.strip().encode("utf8")
    except:
        continue
    m = re.match(ur"^\*?[0-9]+", txt)
    if m is not None:
        if len(accumltr) > 0:
            print re.sub(r"[\r\n\t  ]+", " ", " ".join(accumltr))
            #print " ".join(accumltr)
            accumltr = list()
        if txt.endswith(":") or txt.endswith("："):
            accumltr.append(txt)
            continue
        #print txt
        print re.sub(ur"[\r\n\t  ]+", " ", txt, flags=re.U)
    elif len(accumltr) > 0:
        accumltr.append(txt)
if (len(accumltr)):
    print re.sub(r"[\r\n\t  ]+", " ", " ".join(accumltr))
    #print " ".join(accumltr)

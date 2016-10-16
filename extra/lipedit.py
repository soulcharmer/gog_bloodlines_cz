# -*- coding: latin-1 -*-

#############################################################
#  NOTES : !!!!! THIS WILL NOT RUN FROM VTMB CONSOLE !!!!!! #
#############################################################
#
#  You must install a python shell to run this script.
#  Trying to run from console will crash the game.
#
#  usage:
#
#    python lipedit.py infile outfile [offset]
#    (offset is optional)
#
#  or from python shell:
#
#    >>> import lipedit
#    >>> lipedit.fix(infile, outfile, [offset])
#
#  examples:
#
#    (From Command Line)
#    C:\vtmbdir> C:\Python25\python lipedit.py infile.lip outfile.lip 0.021
#
#    (From Python shell):
#    >>> import lipedit
#    >>> lipedit.fix("C:\\path\\f1.lip", "C:\\path\\f2.lip", 0.1)
#
#    (Batch processing using CYGWIN):
#    $ cd /cygdrive/c/vtmbdir/Vampire/sound/character
#    $ for f in dlg/**/**/*.lip ; do /cygdrive/c/Python25/python lipedit.py $f new/$f; done
#
#    
#
#############################################################

import os
import nt
import string
import fpformat
import re
import sys

g_offset=0

####################
#  Lip Edit Utility v1.0
#------------------
"""

Two Modes of operation:

1) Reads in a lip file and transposes time signatures by specified amount.

2) Fixes plaintext unicde strings at the end of the file and converts them
to true unicode (UTF16) encoding and the correct number of characters. This
can not be done in most simple word editors as they do not support utf16.

ie:

PHRASE unicode "Whoa" 0.000 1.000

would be converted to :

PHRASE unicode 12 " W h o a "  0.000 1.000

"""

__all__ = ["fix","match1fix","match2fix","readlines","writetofile"]

S_IFREG  = 0100000

def fix(infilename,outfilename, offset=0.000):
   """ Process lip file """
   global g_offset

   processed=""
   g_offset=offset
   pattern1 = re.compile("(WORD)(\s+)(\S+)(\s+)(\d+)(\.)(\d+)(\s+)(\d+)(\.)(\d+)")
   pattern2 = re.compile("(\d+)(\s+)(\w+)(\s+)(\d+)(\.)(\d+)(\s+)(\d+)(\.)(\d+)(\s+)(\d+)(\.)(\d+)(((\s+)(\d+))*)")
   pattern3 = re.compile("(PHRASE)(\s+)(unicode)(\s+)(\")(.+)(\")(.+)(\d+)(\.)(\d+)(\s+)(\d+)(\.)(\d+)")
   pattern4 = re.compile("(PHRASE)(\s+)(unicode)(\s+)(\d+)(\s+)(\")(.+)(\")(.+)(\d+)(\.)(\d+)(\s+)(\d+)(\.)(\d+)")
   lines=readlines(infilename)
   for line in lines:
       match1 = re.match(pattern1,line)
       if match1:
           processed += match1fix(match1)
       else:
           match2 = re.match(pattern2,line)
           if match2:
               processed += match2fix(match2)
           else:
               match3 = re.match(pattern3,line)
               if match3:
                   processed += match3fix(match3)
               else:
                   match4 = re.match(pattern4,line)
                   if match4:
                       processed += match4fix(match4)
                   else:
                       processed += line
       processed += "\n"
   writetofile(outfilename,processed)
           
def match1fix(mo):
   global g_offset
   ret = mo.group(1) + mo.group(2) + mo.group(3) + mo.group(4)
   conv1_f = string.atof(mo.group(5) + mo.group(6) + mo.group(7))
   new1_s = fpformat.fix(conv1_f + g_offset,3)
   ret += new1_s 
   ret += mo.group(8)
   conv2_f = string.atof(mo.group(9) + mo.group(10) + mo.group(11))
   new2_s = fpformat.fix(conv2_f + g_offset,3)
   ret += new2_s
   return ret

def match2fix(mo):
   global g_offset
   ret = mo.group(1) + mo.group(2) + mo.group(3) + mo.group(4)
   conv1_f = string.atof(mo.group(5) + mo.group(6) + mo.group(7))
   new1_s = fpformat.fix(conv1_f + g_offset,3)
   ret += new1_s 
   ret += mo.group(8)
   conv2_f = string.atof(mo.group(9) + mo.group(10) + mo.group(11))
   new2_s = fpformat.fix(conv2_f + g_offset,3)
   ret += new2_s
   ret += mo.group(12) + mo.group(13) + mo.group(14) + mo.group(15) + mo.group(16)
   return ret

# The assumption is, if they didn't put a count down, then they
# knew they were going to run this script and didn't bother
# with fake spacing.

def match3fix(mo):
   str = mo.group(5) + mo.group(6) + mo.group(7)
   if -1 == str.find("\x00"):
       str = insertNulls(str)
   ret = mo.group(1) + mo.group(2) + mo.group(3) + mo.group(4)
   ret += "%d" % len(str)
   ret += " " + str + " "
   ret += mo.group(9) + mo.group(10) + mo.group(11) + mo.group(12)
   ret += mo.group(13) + mo.group(14) + mo.group(15)
   return ret

# If a count exists, it is possible that the user tried to fudge the
# values with spaces themselves not realizing that the spaces were
# in fact artifacts of utf16

def match4fix(mo):
   str = mo.group(7) + mo.group(8) + mo.group(9)
   if -1 == str.find("\x00"):
       if str[1] == " " and -1 != str.find('   '):
           str = str.replace("   ","\a")
           str = str.replace(" ","")
           str = str.replace("\a"," ")
       str = insertNulls(str)
   ret = mo.group(1) + mo.group(2) + mo.group(3) + mo.group(4)
   ret += "%d" % len(str)
   ret += " " + str + " "
   ret += mo.group(11) + mo.group(12) + mo.group(13) + mo.group(14)
   ret += mo.group(15) + mo.group(16) + mo.group(17)
   return ret

def insertNulls(str):
   ret = ""
   for c in str:
       ret += c + "\x00"
   return ret

def readlines(path,numlines=-1):
   if not os.path.exists(path): return []
   result=[]
   fin = None
   try:
     fin = open(path,"r")
     line = fin.readline()
     while line and numlines != 0:
       result.append(line.rstrip())
       line=fin.readline()
       numlines=numlines-1
   finally:
     if fin: fin.close()
   return result
   
def writetofile(path,str):
   fptr = None
   try:
     fptr = open(path, 'w')
     fptr.write(str)
   finally:
     if fptr: fptr.close()

def getcwd():
   """ Return Current Working Directory """
   cwd=""
   try: cwd=nt.getcwd()
   except: 
     print "[Error] fileutil : getcwd - Unable to retrieve Current Working Directory"
     pass
   return cwd

def exists(path):
   """Test whether a path exists"""
   # (extracted from python 2.1.2 : ntpath.py)
   try: st = nt.stat(path)
   except nt.error: return 0
   return 1

if "lipedit.py" == sys.argv[0]:
   if len(sys.argv) < 3:
       print 'Usage: lipedit.py infile outfile [offset]'
       sys.exit(1)
   f1 = getcwd() + "\\" + sys.argv[1]
   if not exists(f1):
       print 'Error [%s] Not Found' % (f1)
       sys.exit(1)
   f2 = getcwd() + "\\" + sys.argv[2]
   if not exists(f2):
       print 'Error [%s] Not Found' % (f2)
       sys.exit(1)
   if 4 == len(sys.argv):
       print 'Processing [%s] -> [%s] with offset [%s]' % (sys.argv[1], sys.argv[2], sys.argv[3])
       offset = float(sys.argv[3])
       fix(f1, f2, offset)
   else:
       print 'Processing [%s] -> [%s]' % (sys.argv[1], sys.argv[2])
       fix(f1, f2)
else:
   print 'lipedit.py: Running interactive mode. Type lipedit.fix(infile,outfile,offset)'
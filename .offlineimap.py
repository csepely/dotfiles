#! /usr/bin/env python2
from subprocess import check_output
import sys

def get_pass(account):
  try:
    return check_output("secret-tool lookup Title " + account, shell=True).splitlines()[0]
  except:
    return

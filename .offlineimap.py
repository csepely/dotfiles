#! /usr/bin/env python
import os
from subprocess import check_output

def get_pass(account):
    return check_output("secret-tool lookup Title " + account, shell=True).splitlines()[0]

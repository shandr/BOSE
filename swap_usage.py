#!/usr/bin/env python2.7

import sys
import subprocess
import re
import os
import operator

if not os.geteuid() == 0:
            sys.exit('Script must be run as root')

def swap_usage_by_process():
    dir = '/proc/'
    files = os.listdir(dir)
    swap_dict = {}
    processes = []
    [processes.append(i) for i in files if re.search(r'\d+',i)]
    for proc in processes:
        swap_size = 0
        smaps = open(dir+proc+'/'+'smaps','r')
        for line in smaps:
            match = re.search(r'^Swap:\s+(\d+)',line)
            if match:
                if int(match.group(1)) != 0:
                    swap_size = swap_size+int(match.group(1))
        if swap_size/1024 > 0:
            swap_dict[proc] = swap_size
    if len(swap_dict)>0:
        sorted_dict_tuple=sorted(swap_dict.iteritems(),key=operator.itemgetter(1),reverse=True)
        return sorted_dict_tuple
    else:
        return None

def print_swap_usage(sorted_tuple):
    for key, value in sorted_tuple:
        proc_name = subprocess.Popen("ps --no-heading -p %s |awk '{print $4}'" % key,shell=True,stdout=subprocess.PIPE).stdout.read()
        proc_RAM = subprocess.Popen("ps -o rss --no-heading -p %s" % key,shell=True,stdout=subprocess.PIPE).stdout.read()
        print "PID: %5s RAM: %4d MB  SWAP: %4d MB PROCESS_NAME: %-1s" % (key,int(proc_RAM)/1024,value/1024,proc_name),

print_swap_usage(swap_usage_by_process())

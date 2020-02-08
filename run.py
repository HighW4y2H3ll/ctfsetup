#!/usr/bin/python3

import sys
import pty
import subprocess

timeout = 30
cmd = ["docker", "run", "--rm", "-it", "-u", "1000:1000", sys.argv[1], "timeout", "-s", "9", str(timeout), "bash"]
pty.spawn(cmd)
#subprocess.call(" ".join(cmd), shell=True)

#!/bin/sh

# Send stdout to /tmp/out.txt, send stderr to /tmp/err.txt
ls 1>/tmp/out.txt 2>/tmp/err.txt

# Send stdout to /tmp/out.txt, send stderr to stdout
ls 1>/tmp/out.txt 2>&1

# Send stdout to /tmp/out.txt, send stderr to /dev/null
ls 1>/tmp/out.txt 2>/dev/null

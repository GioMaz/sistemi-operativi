#!/bin/env bash

# Write stdout to /tmp/out.txt
ls > /tmp/out.txt

# Write stdout to /tmp/out.txt, write stderr to /tmp/err.txt
ls 1>/tmp/out.txt 2>/tmp/err.txtw

# Write stdout to /tmp/out.txt, write stderr (2) to stdout (&1)
ls 1>/tmp/out.txt 2>&1

# Write stdout to /tmp/out.txt, write stderr to /dev/null
ls 1>/tmp/out.txt 2>/dev/null

# Append stdout to /tmp/out.txt
ls 1>>/tmp/out.txt

# Specify character for closing the program (here-document)
#cat << EOF

# (here-string)
#a=ciao
#read a <<< ciao1

# Command concatenation
ls; ls
# And (second only if first has 0 return code)
ls && ls
# Or (second only if first has non 0 return code)
ls || ls
# Pipe first stdout into second stdin
ls | head -2
# Pipe first stdout and stderr into second stdin
ls | head -2

# Subshell (evaluate statement)
(ls)
# Subshell (evaluate statement and save output)
items=$(ls)

# Arithmetic expressions (evaluate expression)
((1 < 2 ))
# Arithmetic expressions (evaluate expression and save output)
a=$(( 1 < 2 ))

# Variables
A=content
echo $A
echo ${A}1

# Environment variable
export B=2
echo $B

# Pid of the current process
echo $$

# Last program's return code
echo $?

# Argument list
echo $@

# Number of arguments
echo $#

# Nth argument
echo $0 # first
# Shift argument list by one
shift
echo $0 # second
echo $1 # third

# Functions
function function_name() {
    echo $1
    echo $2
}

function_name "ciao" "come"

# Array
#arr=(1 "a" 2 "b" 3 "c")

# Apply changes in .bashrc
source $HOME/.bashrc

# Number comparisons
[ 1 -eq 1 ]
[ 0 -ne 1 ]
[ 1 -lt 2 ]
[ 2 -le 2 ]
[ 2 -gt 1 ]
[ 2 -ge 2 ]
(( 1 == 2 ))
(( 0 != 1 ))
(( 1 < 2 ))
(( 2 <= 2 ))
(( 2 > 1 ))
(( 2 >= 2 ))

# String comparison
[ "ciao" = "ciao" ]
[ "ciao" \< "biao" ]
[ "biao" \> "ciao" ]
(( "ciao" == "ciao" ))
(( "ciao" < "biao" ))
(( "biao" > "ciao" ))

# Check if path exists
[ -e /tmp/out.txt ]
# Check if path does not exists
[ ! -e /tmp/out.txt ]
# Check if path is a file
[ -f /tmp/out.txt ]
# Check if path is a directory
[ -d /tmp/out.txt ]
# Check if string is empty
[ -z "" ]

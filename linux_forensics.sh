#!/bin/bash
#This is a simple script to automate gathering forensic information on a Linux machine
#Run as root or with sudo
#Run like this:  script -c "bash LINUX_FORENSICS.sh" output_file.txt

   
echo -e "\n---------------------------"
echo -e "DATE AND TIME OF COLLECTION"
echo -e "---------------------------\n"
  
    date -u

echo

echo -e "----------------"
echo -e "NETWORK ACTIVITY"
echo -e "----------------\n"

echo -e "netstat -naovp"
echo -e "--------------\n"

    netstat -naovp

echo

echo -e "ss (socket status)"
echo -e "------------------\n"

    ss

echo

echo -e "---------------------"
echo -e "ESSENTIAL SYSTEM DATA"
echo -e "---------------------\n"

echo -e "ifconfig"
echo -e "--------\n"

    ifconfig

echo

echo -e "printenv"
echo -e "--------\n"

    printenv

echo

echo -e "hostname"
echo -e "--------\n"

    hostname

echo

echo -e "whoami"
echo -e "------\n"

    whoami

echo

echo -e "id"
echo -e "--\n"

    id

echo

echo -e "logname"
echo -e "-------\n"

    logname

echo

echo -e "uptime"
echo -e "------\n"

    uptime

echo

echo -e "uname -a"
echo -e "--------\n"

    uname -a

echo

echo -e "cat /proc/version"
echo -e "-----------------\n"

    cat /proc/version

echo

echo -e "cat /proc/cpuinfo"
echo -e "-----------------\n"

    cat /proc/cpuinfo

echo

echo -e "cat /proc/cmdline"
echo -e "-----------------\n"

    cat /proc/cmdline

echo

echo -e "netstat -nr"
echo -e "-----------\n"

    netstat -nr

echo 

echo -e "arp -a"
echo -e "------\n"

    arp -a

echo

echo -e "-----------------------------"
echo -e "CURRENTLY LOGGED ON USER DATA"
echo -e "-----------------------------\n"

echo -e "who"
echo -e "---\n"

    who

echo 

echo -e "w"
echo -e "-\n"

    w

echo

echo -e "users"
echo -e "-----\n"

    users
    
echo

echo -e "--------------------"
echo -e "GENERAL PROCESS DATA"
echo -e "--------------------\n"

echo -e "lsof -l"
echo -e "-------\n"

    lsof -l

echo

echo -e "ps -e"
echo -e "-----\n"

    ps -e

echo

echo -e "ps -aux"
echo -e "-------\n"

    ps -aux

echo

echo -e "top -n 1 -b"
echo -e "-----------\n"

    top -n 1 -b

echo

echo -e "pstree -a"
echo -e "---------\n"

    pstree -a

echo

echo -e "ps -auxww"
echo -e "---------\n"

    ps -auxww

echo

echo -e "---------------------"
echo -e "SERVICE CONFIGURATION"
echo -e "---------------------\n"

echo -e "service --status-all"
echo -e "--------------------\n"

    service --status-all

echo

echo -e "ls /etc/rc*.d"
echo -e "-------------\n"

    ls /etc/rc*.d

echo

echo -e "---------------------"
echo -e "LOADED KERNEL MODULES"
echo -e "---------------------\n"

echo -e "lsmod"
echo -e "-----\n"

    lsmod

echo

echo -e "cat /proc/modules"
echo -e "-----------------\n"

    cat /proc/modules

echo

echo -e "------------------"
echo -e "CLIPBOARD CONTENTS"
echo -e "------------------\n"

echo -e "xclip -o"
echo -e "--------\n"

    xclip -o

echo

echo -e "----------------"
echo -e "IP TABLES CONFIG"
echo -e "----------------\n"

echo -e "iptables -t nat -nL"
echo -e "-------------------\n"

    iptables -t nat -nL

echo

echo -e "iptables -t mangle -nL"
echo -e "----------------------\n"

    iptables -t mangle -nL

echo

echo -e "iptables -t filter -nL"
echo -e "----------------------\n"

    iptables -t filter -nL

echo

echo -e "iptables -t raw -nL"
echo -e "-------------------\n"

    iptables -t raw -nL

echo
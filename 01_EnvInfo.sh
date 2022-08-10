#!/bin/bash
# confirm env

echo ========================
echo check version of Linux
echo ========================
echo 'cat /proc/version'
cat /proc/version

echo ========================
echo 'cat /etc/os-release'
cat /etc/os-release

echo ========================
echo 'uname -a'
uname -a

echo ========================
echo check CPU
echo ========================
echo cat /proc/cpuinfo
cat /proc/cpuinfo

echo ========================
echo lscpu
lscpu


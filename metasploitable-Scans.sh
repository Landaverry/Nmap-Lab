#!/bin/bash

nmap -oN ./Documents/metasploitable-Recon.txt 192.168.50.239

nmap -O -sV 192.168.50.239
nmap -T5 -sU 192.168.50.239
nikto -h 192.168.50.239

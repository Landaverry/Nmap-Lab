#!/bin/bash

#Test Scan to ensure Nmap is working. 
#This test scan is being done against the scanme.namap server


#defining the target host name or IP Address 
target="scanme.nmap.org"

#run nmap with the basic scan
nmap $target

#DNS does not have to be specifie, an IP address can be used as well.
dig scanme.namp.org 

ip_Address=45.33.32.156

nmap $ip_Address


#Testing nmap and scanning the scanme.nmap.org reveals that the following ports are opened:
#Port 22 - TCP OPEN SSH
#Port 80 - TCP OPEN HTTP
#Port 9929 - TCP - OPEN nping-echo
#Port 31337 - TCP - OPEN Elite

#Nmap Scan without Reverse DNS lookup
nmap -n $ip_Address
#Uses OS' DNS Capabilities
nmap --system-dns $ip_Address
#Use manual DNS Specification - Google's DNS
nmap --dns-servers 8.8.8.8 $ip_Address

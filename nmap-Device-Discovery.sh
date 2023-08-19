#!/bin/bash

#Scanning systems within personal network. 

nmap 192.168.50.0/24 >> nmap-discovery.txt

#Text will contain open ports of various hosts found on the network. 

#During this scan both Host Machines of the virtual servers did appear.
#Since I know both of these address I attempted the following: 
#Pn flag - No Host Discovery
nmap -Pn 192.168.50.198

#Result - All 1000 Scanned ports are in ignored states. 

#TCP SYN Scan against Web Application Server. 
sudo nmap -sS 192.168.50.172

#Port 22 - Open - SSH
#Port 80 - Open - HTTP
#Port 443 - Open - HTTPS

#TCP ACK Scan against Web Apoplication Server 
sudo nmap -sA 192.168.50.172
#Port 22 - Unfiltered - SSH
#Port 80 - Unfiltered - HTTP
#Port 443 - Unfiltered - HTTPS


#UDP Scan of Web Appilication Server
sudo nmap -sU 192.168.50.172
#All 1000 Scanned ports on StudentWellness (192.169.50.172) are in ignored states. 


#Nmap Fingerprinting of a number of devices: 
#Linux - Web app server 
sudo nmap -O 192.168.50.172
#windows machine
sudo nmap -O 192.168.50.112
#Iphone
sudo nmap -O 192.168.50.205

#Nmap Service Scanning of Web Application: 
sudo nmap -sV 192.168.50.172 

#Port 22 - Open - SSH - Open SSH 7.6p1 Ubuntu 
#Port 80 - Open - HTTP - Apache httpd 2.4.29 
#Port 443 - Open - HTTP - Apache httpd 2.4.29
#This information can be used to develop a penetration test or attack. 
#Probing of this system shows there may be potential vulnerabilities to exploit :). This will be done at a later date. 

#Nmap Scan using -A flag
sudo nmap -A 192.168.50.172

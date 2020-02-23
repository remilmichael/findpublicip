#!/bin/bash

#Script to find the public ip address of a connection given by BSNL ONT, without curl-ing into other third party websites.

curl -u <LOGINID>:<PASSWORD> http://<ONT-IP_ADDRESS>/html/status_wan.html | head -n 59 | tail -n 1 | cut -d '<' -f 2 | cut -b 4-

#Change LOGINID and PASSWORD to corresponding username and password
#Edit ONT-IP_ADDRESS to the ip address of the BSNL ONT.

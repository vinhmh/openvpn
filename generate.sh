#!/bin/bash
# Ask the user for their name
echo Input client name?
read CLIENTNAME
echo Starting create cert for $CLIENTNAME
docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn

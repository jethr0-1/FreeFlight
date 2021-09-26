printf '[+] Enter Flight IATA (e.g MU2557, NOT 4-digit number): '
read FID
. ./config.json
echo '[=] Your API Key is '$AVSTACKKEY
curl -s "http://api.aviationstack.com/v1/flights?flight_iata=$FID&access_key=$AVSTACKKEY" | jq

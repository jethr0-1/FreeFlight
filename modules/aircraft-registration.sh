clear
echo 'Module 1. Search Aircraft Registration'
printf 'Tail Number (e.g OH-LWA): '
read tailnumber
curl -s 'https://opensky-network.org/api/metadata/aircraft/list?n=50&p=1&q='$tailnumber'&sc=&sd=' | jq .

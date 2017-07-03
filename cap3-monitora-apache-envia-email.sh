#!/bin/bash

email_de_contato="rafanercessian@gmail.com"
response=$(curl --write-out %{http_code} --connect-timeout 5 --silent --output /dev/null http://localhost)
if [ $response -ne 200 ]
then
mail -s "O servidor parou" rafanercessian@gmail.com << EOF
O servidor apresentou um problema e parou.
EOF
nohup systemctl restart apache2
fi

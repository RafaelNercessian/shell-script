#/bin/bash

email_de_contato="rafanercessian@gmail.com"
response=$(curl --write-out %{http_code} --connect-timeout 5 --silent --output /dev/null http://localhost)
if [ $response -eq 200 ]
then
	echo "O servidor está funcionando"
else
mail -s "O servidor parou" $email_de_contato << EOF
O servidor apresentou um problema e parou.
EOF
if [ $? -eq 0 ]
then
	echo "O email foi enviado"
fi
	service apache2 restart
	if [ $? -eq 0 ]
	then
		echo "O servidor reiniciou"
	fi
fi

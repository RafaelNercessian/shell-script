#!/bin/bash 
memoria_atual=$(free | grep -i "mem" | awk '{ print $3 }')
memoria_total=$(free | grep -i "mem" | awk '{ print $2 }')
relacao_atual_total=$(echo $memoria_atual/$memoria_total *100 | bc -l | awk -F. '{ print $1 }')
LIMIAR=30
if [ $relacao_atual_total -gt $LIMIAR ]
then
	echo "O consumo de memória está acima do limite. Enviando email para o administrador"
mail -s 'Alerta servidor' rafanercessian@gmail.com <<EOF
Consumo de memória em nível crítico, uso de $(free -h | grep -i "mem" | awk '{ print $3 }')
EOF
fi

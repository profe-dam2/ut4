#!/bin/bash

pid_script=$$
intentos=0
echo "Has entrado al script"
read -n1 -p "Pulsa una tecla..."

# -eq es igual
# -lt menor que
# -gt mayor que

while [[ true ]]; do
	clear
	if [[ $intentos -eq "10" ]]; then
		read -n1 -p "Has agotado los 10 intentos"
		break
	fi
	read -p "Indica el PID" user_pid
	((intentos++))
	echo "Has utilizado $intentos intentos"
	
	if [[ $pid_script -eq $user_pid ]]; then # igual
		read -n1 -p "Has acertado!"
		break
	elif [[ $pid_script -gt $user_pid ]]; then # mayor
		read -n1 -p "Has fallado 😭️, el PID es mayor 👆️"
	elif [[ $pid_script -lt $user_pid ]]; then # menor
		read -n1 -p "Has fallado 😭️, el PID es menor 👇️"
	fi
done







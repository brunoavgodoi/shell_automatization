#!/usr/bin/env bash

#Script Name: Configurações de Sistemas
#Descrição: Configurar o sistema usando alguns comandos de automatização
#github https://github.com/brunoavgodoi
#script feito por Bruno Godoi

TIME=1
clear
while true;do
echo " "
echo "SCRIPT DE AUTOMATIZAÇÃO"
echo " "
echo "Escolha a opção que deseja efetuar
        
        1 - Verificar o sistema
        2 - Mostrar atualizações
        3 - Instalar atualizações
        4 - limpar sistema
        5 - checar memória
        6 - checar espaço em disco
        7 - restartar servicos de interface network
        8 - verificar redes
        9 - remover pacotes não necessarios
        0 - sair do sistema"
echo " "
echo -n "opção escolhida: "
read opcao
case $opcao in
    1)
        echo "Verificando o sistema"
        sleep $TIME
        apt update
        ;;
    2)
        echo "Mostrando Atualizacoes"
        sleep $TIME
        apt list --upgradable
        ;;
    3)
        echo "instalando atualizacoes"
        sleep $TIME
        apt upgrade -y
        ;;
    4)
        echo "limpando o sistema"
        sleep $TIME
        apt clean
        apt autoclean
        ;;
    5)
        echo "checando memoria"
        sleep $TIME
        free -h
        ;;
    6)
        echo "checando espaco em disco"
        sleep $TIME
        df -h
        ;;
    7)
        echo "restar em network service"
        sleep $TIME
        systemctl restart network.service
        ;;
    8)
        echo "verificando redes"
        sleep $TIME
        ip ap
        ;;
    9)
        echo "removendo pacotes"
        sleep $TIME
        apt autoremove -y
        ;;
    0)
        echo "SAINDO DO SISTEMA"
        sleep $TIME
        exit
        ;;
    *)
        echo "OPÇÃO INVÁLIDA. TENTE NOVAMENTE"
        ;;
esac
done


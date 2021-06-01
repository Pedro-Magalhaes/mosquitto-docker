# Helper docker para rodar um servidor MQTT simples usando o mosquitto

## Dependencias

* Docker: Testado na versão  20.10.6(CE) e 19.03.4-rc1(CE)

## Rodando o servidor

Para rodar basta ter o docker instalado e executar o script "run_docker.sh". Uma alternativa é copiar e colocar o comando do scrip para o terminal. 

## Configurações

Para configurar o MQTT temos que editar as configurações na pasta [mosquitto/conf/mosquitto.conf](mosquitto/conf/mosquitto.conf)

Seguir as orientações do [site oficial](https://mosquitto.org/man/mosquitto-conf-5.html)

A imagem utlizada é a oficial do [eclipse-mosquito](https://hub.docker.com/_/eclipse-mosquitto). Aqui usei a versão sem encriptação de dados. Existe a imagem que usa o open-ssl mas não testei o funcionamento. Como vou usar apenas na rede local, preferi não testar com ssl.



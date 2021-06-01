# Helper docker para rodar um servidor MQTT simples usando o mosquitto

## Dependencias

* Docker: Testado na versão  20.10.6(CE) e 19.03.4-rc1(CE)

### Instalação

[Documentação](https://docs.docker.com/engine/install/)

Uma observação importante aqui é que o Docker tem alguns problemas com permissionamento de arquivos. Um container sempre executava como root. Isso era um problema quando lidavamos com arquivos, aqui no mosquito a pasta "mosquitto" que é montada ao container para a persistencia de dados e configuração acava ficando com permissão de root. Vi na documentação que hoje o docker tem alguma forma de execução "rootless" mas não investiguei isso. Na minha instalação apenas adicionei meu usuário ao grupo docker para não precisar usar sudo para usar o comando "docker". 

## Rodando o servidor

Para rodar basta ter o docker instalado e executar o script "run_docker.sh". Uma alternativa é copiar e colocar o comando do scrip para o terminal. (Obs.: se o usuário não está no grupo docker pode ser necessário usar "sudo")

```sh
docker run -it --rm --name mosquitto -p 1883:1883 -p 9001:9001 -v $PWD/mosquitto:/mosquitto/ eclipse-mosquitto 
```

para rodar em background basta alterar o scrip e adiconar a flag " -d ". Quando utilizamos esse modo precisamos usar o comando  "docker stop" para finalizar o container. 

```sh
docker stop mosquitto
```

## Configurações

Para configurar o MQTT temos que editar as configurações na pasta [mosquitto/conf/mosquitto.conf](mosquitto/config/mosquitto.conf)

Seguir as orientações do [site oficial](https://mosquitto.org/man/mosquitto-conf-5.html)

A imagem utlizada é a oficial do [eclipse-mosquito](https://hub.docker.com/_/eclipse-mosquitto). Aqui usei a versão sem encriptação de dados. Existe a imagem que usa o open-ssl mas não testei o funcionamento. Como vou usar apenas na rede local, preferi não testar com ssl.


# Instalar os pacotes no ubuntu

```
sudo apt install git make build-essential curl wget cron
```

# Acessar como su

```
sudo su -
```

# Clonar o repositório

```
git clone https://github.com/K0p1-Git/cloudflare-ddns-updater.git
```

# Copiar o arquivo sh

```
cd cloudflare-ddns-updater/
cp cloudflare-template.sh cloudflare.sh
```


# Editar o arquivo cloudflare.sh

```
nano cloudflare.sh
```

## Exemplo de como ficará o arquivo cloudflare.sh

![image](https://user-images.githubusercontent.com/19807997/179578877-14545df3-bf87-4ab0-b959-d795eb6ba035.png)

![image](https://user-images.githubusercontent.com/19807997/179578915-deb4e92a-7637-4565-9257-aee780c98e60.png)


# Modificar a permissão do arquivo cloudflare.sh para execução

```
chmod +x cloudflare.sh
```

# Executar o arquivo cloudflare.sh 
```
./cloudflare.sh
```

# Agendar o script no cron
Obs.: Escolher o editor de preferencia após o comando abaixo
```
crontab -e
```

# Incluir o código no final do arquivo
Obs.: Será executado a cada 1 minuto o script
```
*/1 * * * * /bin/bash /root/cloudflare-ddns-updater/cloudflare.sh
```

# Reiniciar o cron
```
systemctl restart cron
```

<br/><br/>
Fonte: https://www.youtube.com/watch?v=rI-XxnyWFnM

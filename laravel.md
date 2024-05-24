# Laravel - sail

### Instalar na versão 9
```sh
curl -s "https://laravel.build/example-app?with=redis,pgsql&php=80" | bash
```

### Instalar na versão 10
```sh
curl -s "https://laravel.build/example-app?php=81" | bash
```

### Instalar na versão 11
```sh
curl -s "https://laravel.build/example-app" | bash
```


### Criar model com controller e model
```sh
sail artisan make:model Task -cm
```

### Utilizar o tinker
```sh
sail artisan tinker
```
Obs.: Quando for pela primeira vez executar:
```sh
sail composer dump-autoload
```

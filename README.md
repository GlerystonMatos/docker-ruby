# docker-ruby
Projeto para criação de um aplicativo Ruby on Rails utilizando docker

## Comandos

Criação do conteiner para criação do projeto:

```bash
docker-compose -f ./create-project/docker-compose.yml up -d --build
```

Copiar projeto para fora do conteiner de criação e excluir arquivo server.pid:

```bash
docker cp rails-app:./myapp/ ./ && rm -f ./myapp/tmp/pids/server.pid
```

Remoção do conteiner de criação do projeto:

```bash
docker-compose -f ./create-project/docker-compose.yml down
```

Criação do conteiner de execução do projeto:

```bash
docker-compose up -d --build
```

Remoção do conteiner de execução do projeto:

```bash
docker-compose down
```

## ⚠️ Licença
`docker-ruby` está licenciado sob a [MIT License](https://github.com/GlerystonMatos/docker-ruby/blob/main/LICENSE).
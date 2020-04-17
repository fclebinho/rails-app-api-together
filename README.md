# Rails Application with Devise and Token-Based Authentication to Rails API together

### Instalação

Instalar dependências e iniciar o servidor.

```sh
$ bundle install
$ rails db:create db:migrate
$ rails s
```

### Configurações

As seguintes chaves devem ser definidas em caso de deploy para produção.

| Chave | Descrição |
| ------ | ------ |
| AUTH_SECRET_KEY | Chave utilizada pelo Devise e JWT |



https://dillinger.io/
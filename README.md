# Avaliação DCN API

## Descrição do projeto

https://goo.gl/N6UuCK

## Tecnologias Utilizadas

Ruby: 2.4.1

Rails: 5.1.4

## Instruções

Instalação do Rails: http://installrails.com/

### Execução do projeto


```bash
$ git clone https://github.com/vss-moraes/Avaliacao-DCN-API.git
$ cd Avaliacao-DCN-API
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails server
```

Será criado um Avaliador com **cpf**: 12345678910 e **password**: 123456

### Utilização

#### Endpoints (Todos os dados devem ser enviados em JSON)

| Verbo | Caminho | Dados | Retorno |
|-------|---------|-------|---------|
|**POST**|/authenticate|cpf, password|Token de autenticação|
|**POST**|/inscritos|nome_completo, personagem, categoria|Criação do inscrito|
|**GET**|/inscritos||Lista de todos os inscritos|
|**POST**|/inscritos/:inscrito_id/notas|Notas de acordo com a categoria (Cosplay/Cospobre)||
|**GET**|/inscritos/:inscrito_id/notas||Notas do inscrito|

##### Observações

* Para acessar as rotas que requerem autenticação, é necessário enviar o token gerado por /authenticate nos headers da request
* Outros endpoints, apesar de implementados, ainda não estão funcionando corretamente

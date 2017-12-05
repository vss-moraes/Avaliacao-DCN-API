# Avaliação DCN API

## Descrição do projeto

https://goo.gl/N6UuCK

## Tecnologias Utilizadas

Ruby: 2.4.1

Rails: 5.1.4

# Instruções

Instalação do Rails: http://installrails.com/

## Execução do projeto


```bash
$ git clone https://github.com/vss-moraes/Avaliacao-DCN-API.git
$ cd Avaliacao-DCN-API
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails server
```

Será criado um Avaliador com **cpf**: 12345678910 e **password**: 123456

# Endpoints
Todos os endpoints, exceto o de autenticação, só podem ser acessados com o token de acesso enviado na Header da request

```JSON
{
  "Authorization": "{token}"
}
```

## POST /authenticate

**Descrição**: Gera um token de autenticação para o usuário através de CPF e senha

**Parâmetros**
```JSON
{
  "cpf": string,
  "password": string
}
```

**Retorno**:
```JSON
{"auth_token": "{token}"}
```

## GET /inscritos

**Descrição**: Retorna a lista de todos os inscritos
**Restrições**: Avaliadores e Reponsáveis pelas inscrições

## POST /inscritos

**Descrição**: Cria um novo inscrito
**Restrições**: Responsáveis pelas inscrições

**Parâmetros**
```JSON
{
  "nome": string,
  "personagem": string,
  "categoria": "Cosplay/Cospobre"
}
```

**Retorno**:
```JSON
```

## GET /inscritos/:id
**Descrição**: Retorna um inscrito de acordo com seu :id

**Restrições**: Avaliadores e Reponsáveis pelas inscrições

#### PATCH/PUT /inscritos/:id
**Descrição**: Edita um inscrito de acordo com seu :id

**Restrições**: Reponsáveis pelas inscrições

**Parâmetros**
```JSON
{
  "nome": string,
  "personagem": string,
  "categoria": "Cosplay/Cospobre"
}
```

**Retorno**:
```JSON
```

## GET /inscritos/:categoria
**Descrição**: Retorna todos os inscritos de uma determinada categoria (Cosplay ou Cospobre)

**Restrições**: Avaliadores e Reponsáveis pelas inscrições

## DELETE /inscritos/:id
**Descrição**: Deleta um inscrito de acordo com seu :id

**Restrições**: Avaliadores e Reponsáveis pelas inscrições

## GET /inscritos/:inscrito_id/notas
**Descrição**: Retorna a lista de notas de um inscrito

**Restrições**: Avaliadores

## POST /inscritos/:inscrito_id/notas
**Descrição**: Envia as notas dadas ao inscrito pelo Avaliador logado

**Restrições**: Avaliadores

**Parâmetros**
```JSON
Cosplay:
{
  "fantasia": float,
  "similaridade": float,
  "interpretacao": float,
  "criatividade": float
}
Cospobre:
{
  "baixo_custo": float,
  "fantasia": float,
  "similaridade": float,
  "interpretacao": float,
  "criatividade": float
}
```

**Retorno**:
```JSON
```

## PATCH/PUT /notas/:id
**Descrição**: Edita as notas de acordo com o :id da avaliação

**Restrições**: Avaliadores

**Parâmetros**
```JSON
Cosplay:
{
  "fantasia": float,
  "similaridade": float,
  "interpretacao": float,
  "criatividade": float
}
Cospobre:
{
  "baixo_custo": float,
  "fantasia": float,
  "similaridade": float,
  "interpretacao": float,
  "criatividade": float
}
```

**Retorno**:
```JSON
```

## DELETE /notas/:id
**Descrição**: Deleta uma avaliação de acordo com o :id

**Restrições**: Presidente da comissão


# TODO

* Implementar restrições de acesso de acordo com tipos de usuário

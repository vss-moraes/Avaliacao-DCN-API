# Avaliação DCN API

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Avaliação DCN API](#avaliao-dcn-api)
	- [Descrição do projeto](#descrio-do-projeto)
	- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Instruções](#instrues)
	- [Execução do projeto](#execuo-do-projeto)
- [Endpoints](#endpoints)
	- [POST /authenticate](#post-authenticate)
	- [GET /inscritos](#get-inscritos)
	- [POST /inscritos](#post-inscritos)
	- [GET /inscritos/:id](#get-inscritosid)
	- [PATCH/PUT /inscritos/:id](#patchput-inscritosid)
	- [GET /categoria/:categoria](#get-categoriacategoria)
	- [DELETE /inscritos/:id](#delete-inscritosid)
	- [GET /avaliadors/:avaliador_id/notas](#get-avaliadorsavaliadoridnotas)
	- [GET /inscritos/:inscrito_id/notas](#get-inscritosinscritoidnotas)
	- [POST /inscritos/:inscrito_id/notas](#post-inscritosinscritoidnotas)
	- [PATCH/PUT /notas/:id](#patchput-notasid)
	- [DELETE /notas/:id](#delete-notasid)
	- [GET /usuarios](#get-usuarios)
	- [POST /usuarios](#post-usuarios)
	- [PATCH/PUT /usuarios/:id](#patchput-usuariosid)
	- [DELETE /usuarios/:id](#delete-usuariosid)
- [TODO](#todo)

<!-- /TOC -->

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
$ rails db:schema:load
$ rails db:seed
$ rails server
```

Serão criados:
* Avaliador com **cpf**: 12345678910 e **password**: 123456
* Inscritor com **cpf**: 12345678911 e **password**: 123456
* 10 Inscritos

# Endpoints
Todos os endpoints, exceto o de autenticação, só podem ser acessados com o token de acesso enviado na Header da request

```JSON
{
  "Authorization": "{token}"
}
```

## POST /authenticate

**Descrição**: Gera um token de autenticação para o usuário através de CPF e senha

**Parâmetros**:
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

**Parâmetros**:
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

## PATCH/PUT /inscritos/:id
**Descrição**: Edita um inscrito de acordo com seu :id

**Restrições**: Reponsáveis pelas inscrições

**Parâmetros**:
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

## GET /categoria/:categoria
**Descrição**: Retorna todos os inscritos de uma determinada categoria (Cosplay ou Cospobre)

**Restrições**: Avaliadores e Reponsáveis pelas inscrições

## DELETE /inscritos/:id
**Descrição**: Deleta um inscrito de acordo com seu :id

**Restrições**: Reponsáveis pelas inscrições

## GET /avaliadors/:avaliador_id/notas
**Descrição**: Retorna a lista de notas dadas por um avaliador

**Restrições**: Avaliadores

## GET /inscritos/:inscrito_id/notas
**Descrição**: Retorna a lista de notas de um inscrito

**Restrições**: Avaliadores

## POST /inscritos/:inscrito_id/notas
**Descrição**: Envia as notas dadas ao inscrito pelo Avaliador logado

**Restrições**: Avaliadores

**Parâmetros**:
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

**Parâmetros**:
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

## GET /usuarios
**Descrição**: Retorna a lista de todos os usuários cadastrados

**Restrições**: Administrador

## POST /usuarios
**Descrição**: Cria um novo usuário com um de dois tipos: Avaliador ou Inscritor

**Restrições**: Administrador

**Parâmetros**:
```JSON
// Avaliador
{
  "usuario":
  {
    "cpf": string,
    "nome_completo": string,
    "password": string,
    "password_confirmation": string,
    "perfil_type":"Avaliador",
    "perfil_attributes": {
      "presidente": boolean,
      "interno": boolean
    }
  }
}

// Inscritor
{
  "usuario":
  {
    "cpf": string,
    "nome_completo": string,
    "password": string,
    "password_confirmation": string,
    "perfil_type":"Inscritor",
    "perfil_attributes": {}
  }
}
```

## PATCH/PUT /usuarios/:id
**Descrição**: Edita um usuário de acordo com seu :id

**Restrições**: Administrador

**Parâmetros**:
```JSON
// Avaliador
{
  "usuario":
  {
    "cpf": string,
    "nome_completo": string,
    "password": string,
    "password_confirmation": string,
    "perfil_type":"Avaliador",
    "perfil_attributes": {
      "presidente": boolean,
      "interno": boolean
    }
  }
}

// Inscritor
{
  "usuario":
  {
    "cpf": string,
    "nome_completo": string,
    "password": string,
    "password_confirmation": string,
    "perfil_type":"Inscritor",
    "perfil_attributes": {}
  }
}
```

## DELETE /usuarios/:id
**Descrição**: Deleta um usuário de acordo com o :id

**Restrições**: Administrador

# TODO

* Implementar restrições de acesso de acordo com tipos de usuário

# Cognito auth

User pool para autenticação do cliente com base no CPF.

## Objetivo

Há uma lanchonete de bairro que está se expandindo devido ao seu grande sucesso.

Nesse contexto, um sistema de controle de pedidos é essencial para garantir que a lanchonete possa atender os clientes
de maneira eficiente, gerenciando seus pedidos e estoques de forma adequada.

Para solucionar o problema, o projeto visa oferecer à lanchonete um sistema de autoatendimento de fast food que permite
aos clientes selecionar e fazer pedidos sem precisar interagir com um atendente.

A Cognito User Pool criado por este repositório compõe o fluxo de cadastro e autenticação do cliente, demonstrado no diagrama abaixo:

<p align = "center">
  <img src = assets/desenho-autenticacao.svg>
</p>

## Collection

Acesse a [**collection**](assets/collection/Lanchonete.postman_collection) do Postman com todas as chamadas ao Cognito.

## Cliente balcão

Trata-se de um cliente genérico para atendimento não identificado, o username (CPF) neste cenário é 999999999999.
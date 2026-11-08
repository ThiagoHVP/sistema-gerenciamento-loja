# 🏪 Sistema de Gerenciamento de Loja

Sistema de gerenciamento de loja desenvolvido em Portugol, utilizando o VisualG, com foco na aplicação prática de conceitos fundamentais de lógica de programação.

O projeto implementa funcionalidades de cadastro, consulta, alteração e exclusão de produtos e clientes, além do controle de movimentações de estoque e do registro e gerenciamento de vendas, por meio de um menu interativo.

---

## 🎯 Objetivo

Desenvolver um sistema de gerenciamento de loja capaz de organizar informações de produtos e clientes, controlar suas quantidades em estoque e registrar vendas, aplicando estruturas fundamentais da lógica de programação na construção de uma aplicação funcional.

---

## ⚙️ Funcionalidades implementadas

### Gerenciamento de produtos

| Opção | Funcionalidade | Descrição |
|:---:|---|---|
| 01 | Cadastrar produto | Registra produtos com nome, código, preço e quantidade em estoque. |
| 02 | Listar produtos | Exibe os produtos cadastrados e suas respectivas informações. |
| 03 | Buscar produto | Localiza um produto por meio de seu código. |
| 04 | Alterar produto | Permite modificar o nome, o código e o preço de um produto cadastrado. |
| 05 | Excluir produto | Remove um produto cadastrado, mediante confirmação e respeitando as restrições relacionadas às vendas registradas. |

### Controle de estoque

| Opção | Funcionalidade | Descrição |
|:---:|---|---|
| 06 | Entrada de estoque | Adiciona unidades ao estoque de um produto. |
| 07 | Saída de estoque | Retira unidades do estoque, respeitando a quantidade disponível. |

### Gerenciamento de clientes

| Opção | Funcionalidade | Descrição |
|:---:|---|---|
| 08 | Cadastrar cliente | Registra clientes com nome completo, código, CPF e telefone, realizando validações cadastrais. |
| 09 | Listar clientes | Exibe os clientes cadastrados e suas respectivas informações. |
| 10 | Buscar cliente | Localiza um cliente por meio de seu código. |
| 11 | Alterar cliente | Permite modificar o nome, o CPF e o telefone de um cliente cadastrado, preservando seu código de identificação. |
| 12 | Excluir cliente | Remove um cliente mediante confirmação, respeitando as restrições relacionadas às vendas registradas. |

### Controle de vendas

| Opção | Funcionalidade | Descrição |
|:---:|---|---|
| 13 | Realizar venda | Registra uma venda vinculando um cliente a um produto, calcula o valor total, atualiza o estoque e armazena as informações da operação mediante confirmação. |
| 14 | Listar vendas | Exibe todas as vendas registradas, incluindo informações da venda, do cliente e do produto relacionado. |
| 15 | Buscar venda | Localiza uma venda por meio de seu código e apresenta suas respectivas informações. |
| 16 | Total de vendas | Calcula e exibe o valor acumulado de todas as vendas registradas. |

---

## 🛠️ Tecnologias utilizadas

- **Portugol:** linguagem utilizada para desenvolver a lógica do sistema.
- **VisualG:** ambiente utilizado para escrever e executar o algoritmo.

---

## 🧠 Conceitos de lógica de programação aplicados

O desenvolvimento utiliza diversos conceitos fundamentais da programação:

- Variáveis e constantes de controle.
- Tipos de dados: inteiro, real, caractere e lógico.
- Operadores aritméticos, relacionais e lógicos.
- Estruturas condicionais (`SE`, `SENAO`).
- Estruturas de repetição (`ENQUANTO`, `PARA`).
- Vetores para armazenamento e organização dos dados.
- Contadores e índices.
- Pesquisa sequencial.
- Manipulação e comparação de caracteres.
- Conversão de dados entre texto e valores numéricos.
- Validação e tratamento de entradas.
- Cálculos matemáticos para validação dos dígitos verificadores do CPF.
- Organização de informações por meio de estruturas de dados.
- Verificação de duplicidade de informações cadastrais.
- Relacionamento entre registros de produtos, clientes e vendas.
- Cálculos de valores individuais e acumulados.
- Atualização de estoque integrada ao registro de vendas.
- Reorganização de registros em vetores após exclusões.
- Confirmação de operações antes de alterações definitivas.

---

## 🗃️ Estruturas de dados

O sistema utiliza vetores para armazenar as informações dos produtos, clientes e vendas:

### Produtos

| Vetor | Tipo de dado | Informação armazenada |
|---|---|---|
| `NOME` | Caracter | Nome do produto |
| `COD` | Inteiro | Código de identificação |
| `PRECO` | Real | Preço do produto |
| `ESTOQUE` | Inteiro | Quantidade disponível em estoque |

### Clientes

| Vetor | Tipo de dado | Informação armazenada |
|---|---|---|
| `NOME_CLIENTE` | Caracter | Nome completo do cliente |
| `COD_CLIENTE` | Inteiro | Código de identificação |
| `CPF_CLIENTE` | Caracter | CPF do cliente |
| `TELEFONE_CLIENTE` | Caracter | Telefone do cliente |

### Vendas

| Vetor | Tipo de dado | Informação armazenada |
|---|---|---|
| `COD_VENDA` | Inteiro | Código de identificação da venda |
| `COD_CLIENTE_VENDA` | Inteiro | Código do cliente relacionado à venda |
| `COD_PRODUTO_VENDA` | Inteiro | Código do produto relacionado à venda |
| `QUANTIDADE_VENDA` | Inteiro | Quantidade de unidades vendidas |
| `PRECO_UNITARIO` | Real | Preço unitário do produto no momento da venda |
| `TOTAL_VENDA` | Real | Valor total da venda |

Os dados são organizados por índices, permitindo localizar, consultar e atualizar os registros dos produtos, clientes e vendas.

As informações armazenadas permitem relacionar cada venda ao respectivo cliente e produto, além de preservar o preço unitário e a quantidade comercializada para consultas e cálculos posteriores.

---

## 🔒 Validações implementadas

O sistema possui mecanismos de validação para preservar a consistência das informações:

### Produtos e estoque

- Verificação de nomes não vazios.
- Validação de códigos numéricos entre 1 e 999.
- Prevenção de códigos duplicados.
- Validação de preços positivos e de seu formato numérico.
- Validação de quantidades inteiras não negativas no cadastro.
- Verificação de existência de produtos antes das operações.
- Confirmação antes da exclusão de produtos.
- Restrição de exclusão de produtos que possuem vendas registradas.
- Verificação de limites numéricos nas operações de estoque.
- Prevenção de saídas superiores à quantidade disponível.

### Clientes

- Verificação de nomes não vazios.
- Validação de nomes utilizando letras e espaços, incluindo caracteres acentuados.
- Rejeição de espaços no início, no final e de espaços consecutivos nos nomes.
- Validação de códigos numéricos entre 1 e 999.
- Prevenção de códigos de clientes duplicados.
- Validação de CPF com exatamente 11 caracteres numéricos.
- Verificação dos dois dígitos verificadores do CPF.
- Rejeição de CPFs compostos por números repetidos.
- Prevenção de CPFs duplicados entre clientes.
- Validação de telefones com exatamente 11 caracteres numéricos.
- Rejeição de telefones compostos por números repetidos.
- Prevenção de telefones duplicados entre clientes.
- Verificação de existência de clientes antes das operações.
- Confirmação antes da exclusão de clientes.
- Restrição de exclusão de clientes que possuem vendas registradas.

### Vendas

- Verificação do limite máximo de vendas registradas.
- Verificação da existência de clientes cadastrados.
- Verificação da existência de produtos cadastrados.
- Validação dos códigos de clientes, produtos e vendas.
- Verificação de existência do cliente e do produto informados.
- Verificação de disponibilidade de estoque.
- Validação de quantidades inteiras maiores que zero.
- Prevenção de vendas com quantidade superior ao estoque disponível.
- Cálculo automático do valor total da venda.
- Confirmação antes da efetivação da venda.
- Atualização do estoque somente após a confirmação da venda.
- Armazenamento das informações necessárias para consultas posteriores.

---

## ▶️ Como executar

1. Instale ou abra o VisualG.
2. Baixe o arquivo `.alg` disponibilizado neste repositório.
3. Abra o arquivo no VisualG.
4. Execute o algoritmo.
5. Utilize o menu principal para acessar as funcionalidades disponíveis.

---

## 📌 Status do desenvolvimento

**Versão documental 3 — Funcionalidades de gerenciamento de produtos, controle de estoque, gerenciamento de clientes e controle de vendas.**

O projeto está sendo documentado e publicado gradualmente no GitHub, acompanhando a implementação das funcionalidades do sistema.

---

Desenvolvido como projeto prático de aplicação dos fundamentos de lógica de programação em Portugol.

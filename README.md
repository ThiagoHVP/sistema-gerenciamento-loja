# 🏪 Sistema de Gerenciamento de Loja

Sistema de gerenciamento de loja desenvolvido em Portugol, utilizando o VisualG, com foco na aplicação prática de conceitos fundamentais de lógica de programação.

O projeto implementa funcionalidades de cadastro, consulta, alteração e exclusão de produtos e clientes, além do controle de movimentações de estoque, por meio de um menu interativo.

---

## 🎯 Objetivo

Desenvolver um sistema de gerenciamento de loja capaz de organizar informações de produtos e clientes e controlar suas quantidades em estoque, aplicando estruturas fundamentais da lógica de programação na construção de uma aplicação funcional.

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

---

## 🗃️ Estruturas de dados

O sistema utiliza vetores para armazenar as informações dos produtos e clientes:

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

Os dados são organizados por índices, permitindo localizar, consultar e atualizar os registros dos produtos e clientes.

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

---

## ▶️ Como executar

1. Instale ou abra o VisualG.
2. Baixe o arquivo `.alg` disponibilizado neste repositório.
3. Abra o arquivo no VisualG.
4. Execute o algoritmo.
5. Utilize o menu principal para acessar as funcionalidades disponíveis.

---

## 📌 Status do desenvolvimento

**Versão documental 2 — Funcionalidades de gerenciamento de produtos, controle de estoque e gerenciamento de clientes.**

O projeto está sendo documentado e publicado gradualmente no GitHub, acompanhando a implementação das funcionalidades do sistema.

---

Desenvolvido como projeto prático de aplicação dos fundamentos de lógica de programação em Portugol.

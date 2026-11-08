# 🏪 Sistema de Gerenciamento de Loja

Sistema de gerenciamento de loja desenvolvido em Portugol, utilizando o VisualG, com foco na aplicação prática de conceitos fundamentais de lógica de programação.

O projeto implementa funcionalidades de cadastro, consulta, alteração e exclusão de produtos e clientes, além do controle de movimentações de estoque, do registro, gerenciamento e cancelamento de vendas e da geração de relatórios gerenciais, por meio de um menu interativo.

---

## 🎯 Objetivo

Desenvolver um sistema de gerenciamento de loja capaz de organizar informações de produtos e clientes, controlar suas quantidades em estoque, registrar e gerenciar vendas e gerar relatórios gerenciais, aplicando estruturas fundamentais da lógica de programação na construção de uma aplicação funcional.

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
| 20 | Cancelar venda | Cancela uma venda mediante confirmação, devolve a quantidade comercializada ao estoque e remove o respectivo registro do histórico de vendas. |
| 21 | Alterar venda | Permite modificar o produto e a quantidade de uma venda cadastrada, recalculando o valor total e atualizando os estoques envolvidos mediante confirmação. |

### Relatórios e análises gerenciais

| Opção | Funcionalidade | Descrição |
|:---:|---|---|
| 17 | Relatório de estoque | Exibe os produtos cadastrados, suas respectivas quantidades, valores individuais em estoque e o valor total do estoque. |
| 18 | Produto mais vendido | Identifica o produto com a maior quantidade de unidades vendidas, considerando o histórico de vendas registrado. |
| 19 | Cliente que mais comprou | Identifica o cliente com a maior quantidade de unidades adquiridas, considerando o histórico de vendas registrado. |

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
- Estruturas de repetição aninhadas para cruzamento de informações.
- Acumulação e comparação de quantidades e valores.
- Identificação de maiores valores por meio de variáveis de controle.
- Processamento e análise de registros de vendas.
- Geração de relatórios com informações armazenadas nos vetores.
- Devolução de quantidades ao estoque após o cancelamento de vendas.
- Atualização integrada de registros e estoques durante alterações de vendas.
- Remoção de registros por deslocamento de elementos em vetores.
- Preservação da consistência das informações após operações de cancelamento e alteração.

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

As informações armazenadas permitem relacionar cada venda ao respectivo cliente e produto, além de preservar o preço unitário e a quantidade comercializada para consultas, cálculos e análises posteriores.

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
- Verificação da existência de vendas antes das operações de alteração e cancelamento.
- Validação dos códigos de vendas informados.
- Confirmação antes do cancelamento de uma venda.
- Devolução automática da quantidade comercializada ao estoque após o cancelamento confirmado.
- Remoção do registro cancelado e reorganização dos vetores de vendas.
- Verificação da existência do novo produto informado durante a alteração de uma venda.
- Validação de quantidades inteiras maiores que zero durante a alteração.
- Verificação de disponibilidade de estoque considerando a quantidade temporariamente devolvida do produto original.
- Prevenção de alterações com dados iguais aos da venda atual.
- Recalculo do preço unitário e do valor total conforme o novo produto e a quantidade informada.
- Confirmação antes da efetivação da alteração.
- Atualização dos estoques e das informações da venda somente após a confirmação.

### Relatórios e análises gerenciais

- Verificação da existência de produtos antes da geração do relatório de estoque.
- Verificação da existência de vendas antes das análises de desempenho.
- Cálculo individual do valor dos produtos disponíveis em estoque.
- Acumulação do valor total do estoque.
- Identificação do produto com maior quantidade de unidades vendidas.
- Identificação do cliente com maior quantidade de unidades adquiridas.
- Verificação de clientes que ainda não realizaram compras.
- Utilização dos códigos de identificação para relacionar vendas aos respectivos produtos e clientes.

---

## ▶️ Como executar

1. Instale ou abra o VisualG.
2. Baixe o arquivo `.alg` disponibilizado neste repositório.
3. Abra o arquivo no VisualG.
4. Execute o algoritmo.
5. Utilize o menu principal para acessar as funcionalidades disponíveis.

---

## 📌 Status do desenvolvimento

**Versão final — Sistema de gerenciamento de loja com funcionalidades de gerenciamento de produtos, controle de estoque, gerenciamento de clientes, controle de vendas, relatórios gerenciais, alteração e cancelamento de vendas.**

Projeto desenvolvido e documentado como aplicação prática dos fundamentos de lógica de programação em Portugol.

---

Desenvolvido como projeto prático de aplicação dos fundamentos de lógica de programação em Portugol.

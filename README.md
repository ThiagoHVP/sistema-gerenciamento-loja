Sistema de Gerenciamento de Loja
Sistema de gerenciamento de loja desenvolvido em Portugol, utilizando o VisualG, com foco na aplicação prática de conceitos fundamentais de lógica de programação.

O projeto implementa funcionalidades de cadastro, consulta, alteração e exclusão de produtos, além do controle de movimentações de estoque, por meio de um menu interativo.

🎯 Objetivo
Desenvolver um sistema de gerenciamento de loja capaz de organizar informações de produtos e controlar suas quantidades em estoque, aplicando estruturas fundamentais da lógica de programação na construção de uma aplicação funcional.

⚙️ Funcionalidades implementadas
Gerenciamento de produtos

Opção	Funcionalidade	Descrição
01	Cadastrar produto	Registra produtos com nome, código, preço e quantidade em estoque.
02	Listar produtos	Exibe os produtos cadastrados e suas respectivas informações.
03	Buscar produto	Localiza um produto por meio de seu código.
04	Alterar produto	Permite modificar o nome, o código e o preço de um produto cadastrado.
05	Excluir produto	Remove um produto cadastrado, mediante confirmação e respeitando as restrições relacionadas às vendas registradas.
Controle de estoque

Opção	Funcionalidade	Descrição
06	Entrada de estoque	Adiciona unidades ao estoque de um produto.
07	Saída de estoque	Retira unidades do estoque, respeitando a quantidade disponível.
🛠️ Tecnologias utilizadas
Portugol: linguagem utilizada para desenvolver a lógica do sistema.
VisualG: ambiente utilizado para escrever e executar o algoritmo.
🧠 Conceitos de lógica de programação aplicados
O desenvolvimento utiliza diversos conceitos fundamentais da programação:

Variáveis e constantes de controle.
Tipos de dados: inteiro, real, caractere e lógico.
Operadores aritméticos, relacionais e lógicos.
Estruturas condicionais (SE, SENAO).
Estruturas de repetição (ENQUANTO, PARA).
Vetores para armazenamento e organização dos dados.
Contadores e índices.
Pesquisa sequencial.
Manipulação e comparação de caracteres.
Conversão de dados entre texto e valores numéricos.
Validação e tratamento de entradas.
Organização de informações por meio de estruturas de dados.
🗃️ Estruturas de dados
O sistema utiliza vetores para armazenar as informações dos produtos:


Vetor	Tipo de dado	Informação armazenada
NOME	Caracter	Nome do produto
COD	Inteiro	Código de identificação
PRECO	Real	Preço do produto
ESTOQUE	Inteiro	Quantidade disponível em estoque
Os dados são organizados por índices, permitindo localizar, consultar e atualizar os registros dos produtos.

🔒 Validações implementadas
O sistema possui mecanismos de validação para preservar a consistência das informações:

Verificação de nomes não vazios.
Validação de códigos numéricos entre 1 e 999.
Prevenção de códigos duplicados.
Validação de preços positivos e de seu formato numérico.
Validação de quantidades inteiras não negativas no cadastro.
Verificação de existência de produtos antes das operações.
Confirmação antes da exclusão de produtos.
Restrição de exclusão de produtos que possuem vendas registradas.
Verificação de limites numéricos nas operações de estoque.
Prevenção de saídas superiores à quantidade disponível.
▶️ Como executar
Instale ou abra o VisualG.
Baixe o arquivo .alg disponibilizado neste repositório.
Abra o arquivo no VisualG.
Execute o algoritmo.
Utilize o menu principal para acessar as funcionalidades disponíveis.
📌 Status do desenvolvimento
Versão documental 1 — Funcionalidades de gerenciamento de produtos e controle de estoque.

O projeto está sendo documentado e publicado gradualmente no GitHub, acompanhando a implementação das funcionalidades do sistema.

Desenvolvido como projeto prático de aplicação dos fundamentos de lógica de programação em Portugol.

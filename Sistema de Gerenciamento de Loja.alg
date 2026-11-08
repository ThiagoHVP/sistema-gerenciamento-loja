algoritmo "Sistema de Gerenciamento de Loja"

var

//VETORES DE PRODUTOS
NOME: VETOR[1..999] DE Caracter
COD: VETOR[1..999] DE Inteiro
PRECO: VETOR[1..999] DE Real
ESTOQUE: VETOR[1..999] DE Inteiro

//VETORES DE CLIENTES
NOME_CLIENTE: VETOR[1..999] DE Caracter
COD_CLIENTE: VETOR[1..999] DE Inteiro
CPF_CLIENTE: VETOR[1..999] DE Caracter
TELEFONE_CLIENTE: VETOR[1..999] DE Caracter

//VETORES DE VENDAS
COD_VENDA: VETOR[1..999] DE Inteiro
COD_CLIENTE_VENDA: VETOR[1..999] DE Inteiro
COD_PRODUTO_VENDA: VETOR[1..999] DE Inteiro
QUANTIDADE_VENDA: VETOR[1..999] DE Inteiro
PRECO_UNITARIO: VETOR[1..999] DE Real
TOTAL_VENDA: VETOR[1..999] DE Real

//VARIÁVEIS
   
I, DIGITO1, DIGITO2, DIGITO_INFORMADO1, DIGITO_INFORMADO2, SOMA, RESTO, CONTADOR_CPF, QUANTIDADE_TOTAL_PRODUTO, QUANTIDADE_TOTAL_CLIENTE, NOVA_QUANTIDADE, POSICAO_NOVO_PRODUTO, QUANTIDADE_INTEIRA: Inteiro
INFORMACAO, CONTADOR, AUXILIAR, ESTOQUE_NOVO, QUANTIDADE_NOVA, MAIOR_QUANTIDADE_VENDIDA, MAIOR_QUANTIDADE_COMPRADA, POSICAO_VENDA, CONTADOR_NOME, ESTOQUE_DISPONIVEL, QUANTIDADE_DECIMAL: Inteiro
CODIGO_NOVO, CODIGO_BUSCA, CODIGO_CLIENTE_NOVO, CODIGO_CLIENTE_BUSCA, CODIGO_VENDA_BUSCA, CODIGO_PRODUTO_MAIS_VENDIDO, CODIGO_CLIENTE_MAIS_COMPROU, CODIGO_NOVO_PRODUTO: Inteiro
INDICE, INDICE_CLIENTE, INDICE_VENDA, INDICE_CLIENTE_BUSCA, INDICE_PRODUTO_BUSCA: Inteiro

VALIDO, PODE_EXCLUIR, TEM_CARACTE, CPF_VALIDO, CODIGO_CLIENTE_VALIDO, CPF_REPETIDO, TELEFONE_VALIDO, NOME_VALIDO, ESPACO_ANTERIOR, CPF_DUPLICADO: Logico
ENCONTRADO, ENCONTRADO_CLIENTE, ENCONTRADO_VENDA, PRODUTO_ENCONTRADO, TELEFONE_DUPLICADO, PARTE_DECIMAL, SEPARADOR_ENCONTRADO: Logico

NOME_NOVO, CONFIRMACAO: Caracter
ENTRADA, CARACTE_ATUAL, NOME_CLIENTE_NOVO, CPF_NOVO, TELEFONE_NOVO: Caracter
CONFIRMACAO_CLIENTE: Caracter

PRECO_NOVO, TOTAL_NOVO, TOTAL_VENDAS, VALOR_TOTAL_ESTOQUE, NOVO_TOTAL, PARTE_INTEIRA, PARTE_FRACIONARIA, DIVISOR: Real

inicio

      //INICIALIZAÇÃO DO MENU

      INFORMACAO <- -1
      INDICE <- 1
      INDICE_CLIENTE <- 1
      INDICE_VENDA <- 1

      ENQUANTO INFORMACAO <> 0 FACA

         ESCREVAL("==================================")
         ESCREVAL("          SISTEMA DA LOJA         ")
         ESCREVAL("==================================")

         ESCREVAL()

         ESCREVAL(" 1 - Cadastrar Produto")
         ESCREVAL(" 2 - Listar Produtos")
         ESCREVAL(" 3 - Buscar Produto")
         ESCREVAL(" 4 - Alterar Produto")
         ESCREVAL(" 5 - Excluir Produto")
         ESCREVAL(" 6 - Entrada de Estoque")
         ESCREVAL(" 7 - Saída de Estoque")
         ESCREVAL(" 8 - Cadastrar Cliente")
         ESCREVAL(" 9 - Listar Clientes")
         ESCREVAL("10 - Buscar Cliente")
         ESCREVAL("11 - Alterar Cliente")
         ESCREVAL("12 - Excluir Cliente")
         ESCREVAL("13 - Realizar Venda")
         ESCREVAL("14 - Listar Vendas")
         ESCREVAL("15 - Buscar Venda")
         ESCREVAL("16 - Calcular Total de Vendas")
         ESCREVAL("17 - Relatório de Estoque")
         ESCREVAL("18 - Produto Mais Vendido")
         ESCREVAL("19 - Cliente que Mais Comprou")
         ESCREVAL("20 - Cancelar Venda")
         ESCREVAL("21 - Alterar Venda")

         ESCREVAL()

         ESCREVAL(" 0 - Sair")

         ESCREVAL()

         ESCREVAL("==================================")

         VALIDO <- FALSO

         ENQUANTO NAO VALIDO FACA

            ESCREVA("Escolha uma opção: ")
            LEIA(ENTRADA)

            VALIDO <- (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 2)

            SE VALIDO ENTAO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            FIMSE

            SE VALIDO ENTAO

               INFORMACAO <- CARACPNUM (ENTRADA)

               SE (INFORMACAO < 0) OU (INFORMACAO > 21) ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            SE NAO VALIDO ENTAO

               ESCREVAL()

               ESCREVAL("ERRO: Opção inválida!")
               ESCREVAL("Digite um número de 0 a 21.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
       
      //====================================================================
      // OPÇÃO 1 - CADASTRAR
      //====================================================================
      
      SE (INFORMACAO = 1) ENTAO

         LIMPATELA()

         SE (INDICE > 10) ENTAO

            ESCREVAL("ERRO: Limite de produtos atingido!")

         SENAO

            ESCREVAL("==================================")
            ESCREVAL("        CADASTRAR PRODUTO         ")
            ESCREVAL("==================================")

            ESCREVAL()

            //VALIDAR NOME

            NOME_NOVO <- ""

            TEM_CARACTE <- FALSO

            ENQUANTO TEM_CARACTE = FALSO FACA

               ESCREVA("Digite o nome do produto: ")
               LEIA(NOME_NOVO)

               TEM_CARACTE <- FALSO

               PARA CONTADOR DE 1 ATE COMPR(NOME_NOVO) FACA

                  SE COPIA(NOME_NOVO, CONTADOR, 1) <> " " ENTAO

                     TEM_CARACTE <- VERDADEIRO

                  FIMSE

               FIMPARA

               SE TEM_CARACTE = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Nome inválido! Digite um nome.")
                  
                  ESCREVAL()

               FIMSE

            FIMENQUANTO

            //VALIDAR CÓDIGO

            ENCONTRADO <- FALSO

            CODIGO_NOVO <- 0

            ENQUANTO (CODIGO_NOVO <= 0) OU (ENCONTRADO = VERDADEIRO) FACA

               VALIDO <- FALSO

               ENQUANTO VALIDO = FALSO FACA

                  ESCREVA("Digite o código do produto (1 a 999): ")
                  LEIA(ENTRADA)

                  VALIDO <- VERDADEIRO

                  SE (COMPR(ENTRADA) = 0) OU (COMPR(ENTRADA) > 3) ENTAO

                     VALIDO <- FALSO

                  SENAO

                     PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                        CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                        SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                           VALIDO <- FALSO

                        FIMSE

                     FIMPARA

                  FIMSE

                  SE VALIDO = FALSO ENTAO

                     ESCREVAL()
                       
                     ESCREVAL("ERRO: Digite um código de 1 a 999.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO

               CODIGO_NOVO <- CARACPNUM(ENTRADA)

               SE CODIGO_NOVO <= 0 ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: O código deve ser maior que zero.")

                  ESCREVAL()

               SENAO

                  ENCONTRADO <- FALSO

                  PARA CONTADOR DE 1 ATE INDICE - 1 FACA

                     SE COD[CONTADOR] = CODIGO_NOVO ENTAO

                        ENCONTRADO <- VERDADEIRO

                     FIMSE

                  FIMPARA

                  SE ENCONTRADO = VERDADEIRO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: Código já cadastrado!")
                     ESCREVAL("Digite outro código.")

                     ESCREVAL()

                  FIMSE

               FIMSE

            FIMENQUANTO

            //VALIDAR PREÇO

            PRECO_NOVO <- 0

            ENQUANTO PRECO_NOVO <= 0 FACA

               VALIDO <- FALSO

               ENQUANTO VALIDO = FALSO FACA

                  ESCREVA("Digite o preço do produto: ")
                  LEIA(ENTRADA)

                  VALIDO <- VERDADEIRO

                  SEPARADOR_ENCONTRADO <- FALSO

                  QUANTIDADE_INTEIRA <- 0
                  
                  QUANTIDADE_DECIMAL <- 0

                  //VALIDAR FORMATO DO PREÇO

                  SE COMPR(ENTRADA) = 0 ENTAO

                     VALIDO <- FALSO

                  SENAO

                     PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                        CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                        SE (CARACTE_ATUAL >= "0") E (CARACTE_ATUAL <= "9") ENTAO

                           SE SEPARADOR_ENCONTRADO = FALSO ENTAO

                              QUANTIDADE_INTEIRA <- QUANTIDADE_INTEIRA + 1

                              SE QUANTIDADE_INTEIRA > 9 ENTAO

                                 VALIDO <- FALSO

                              FIMSE

                           SENAO

                              QUANTIDADE_DECIMAL <- QUANTIDADE_DECIMAL + 1

                              SE QUANTIDADE_DECIMAL > 2 ENTAO

                                 VALIDO <- FALSO

                              FIMSE

                           FIMSE

                        SENAO
                            
                           SE (CARACTE_ATUAL = ",") OU (CARACTE_ATUAL = ".") ENTAO

                              SE SEPARADOR_ENCONTRADO ENTAO

                                 VALIDO <- FALSO

                              SENAO

                                 SE (CONTADOR = 1) OU (CONTADOR = COMPR(ENTRADA)) ENTAO

                                    VALIDO <- FALSO

                                 FIMSE

                                 SEPARADOR_ENCONTRADO <- VERDADEIRO

                              FIMSE

                           SENAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMSE

                     FIMPARA

                  FIMSE

                  SE VALIDO = FALSO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: Digite um preço numérico válido.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO

               //CONVERTER TEXTO PARA PREÇO

               PARTE_INTEIRA <- 0

               PARTE_FRACIONARIA <- 0

               DIVISOR <- 1

               PARTE_DECIMAL <- FALSO

               PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                  SE (CARACTE_ATUAL = ",") OU (CARACTE_ATUAL = ".") ENTAO

                     PARTE_DECIMAL <- VERDADEIRO

                  SENAO

                     SE PARTE_DECIMAL = FALSO ENTAO

                        PARTE_INTEIRA <- PARTE_INTEIRA * 10 + CARACPNUM(CARACTE_ATUAL)

                     SENAO

                        PARTE_FRACIONARIA <- PARTE_FRACIONARIA * 10 + CARACPNUM(CARACTE_ATUAL)

                           DIVISOR <- DIVISOR * 10

                     FIMSE

                  FIMSE

               FIMPARA

               PRECO_NOVO <- PARTE_INTEIRA + (PARTE_FRACIONARIA / DIVISOR)

               SE PRECO_NOVO <= 0 ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: O preço deve ser maior que zero.")

                  ESCREVAL()

               FIMSE

            FIMENQUANTO
             
            //VALIDAR ESTOQUE

            ESTOQUE_NOVO <- -1

            ENQUANTO ESTOQUE_NOVO < 0 FACA

               VALIDO <- FALSO

               ENQUANTO VALIDO = FALSO FACA

                  ESCREVA("Digite a quantidade em estoque: ")
                  LEIA(ENTRADA)

                  VALIDO <- VERDADEIRO

                  SE (COMPR(ENTRADA) = 0) OU (COMPR(ENTRADA) > 9) ENTAO

                     VALIDO <- FALSO

                  SENAO

                     PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                        CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                        SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                           VALIDO <- FALSO

                        FIMSE

                     FIMPARA

                  FIMSE

                  SE VALIDO = FALSO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: Digite um número inteiro não negativo.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO

               //CONVERTER TEXTO PARA INTEIRO

               ESTOQUE_NOVO <- 0

               PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                  ESTOQUE_NOVO <- ESTOQUE_NOVO * 10 + CARACPNUM(CARACTE_ATUAL)

               FIMPARA

            FIMENQUANTO

            //ARMAZENAR PRODUTO

            NOME[INDICE] <- NOME_NOVO
            COD[INDICE] <- CODIGO_NOVO
            PRECO[INDICE] <- PRECO_NOVO
            ESTOQUE[INDICE] <- ESTOQUE_NOVO

            LIMPATELA()

            ESCREVAL()

            ESCREVAL("Produto cadastrado com sucesso!")

            INDICE <- INDICE + 1

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 2 - LISTAR PRODUTOS
      //====================================================================

      SE (INFORMACAO = 2) ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          LISTAR PRODUTOS         ")
         ESCREVAL("==================================")

         ESCREVAL()

         SE INDICE = 1 ENTAO

            ESCREVAL("ERRO: Nenhum produto cadastrado!")

         SENAO

              PARA CONTADOR DE 1 ATE INDICE - 1 FACA

                   ESCREVAL("Produto ",CONTADOR)

                   ESCREVAL()

                   ESCREVAL("Nome: ",NOME[CONTADOR])
                   ESCREVAL("Código: ",COD[CONTADOR])
                   ESCREVAL("Preço: ", "R$",PRECO[CONTADOR])
                   ESCREVAL("Estoque: ",ESTOQUE[CONTADOR])

                   ESCREVAL()

                   ESCREVAL("----------------------------------")
                   
                   ESCREVAL()

               FIMPARA

          FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 3 - BUSCAR PRODUTO
      //====================================================================

      SE (INFORMACAO = 3) ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("           BUSCAR PRODUTO         ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO
         
         CODIGO_BUSCA <- 0

         ENQUANTO CODIGO_BUSCA <= 0 FACA

            VALIDO <- FALSO

            ENQUANTO VALIDO = FALSO FACA

               ESCREVA("Digite o código do produto (1 a 999): ")
               LEIA(ENTRADA)

               VALIDO <- VERDADEIRO

               SE (COMPR(ENTRADA) = 0) OU (COMPR(ENTRADA) > 3) ENTAO

                  VALIDO <- FALSO

               SENAO

                  PARA CONTADOR DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA, CONTADOR, 1)

                     SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMPARA

               FIMSE

               SE VALIDO = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Digite um código numérico de 1 a 999.")

                  ESCREVAL()

               FIMSE

            FIMENQUANTO

            CODIGO_BUSCA <- CARACPNUM(ENTRADA)

            SE CODIGO_BUSCA <= 0 ENTAO

               ESCREVAL()

               ESCREVAL("ERRO: O código deve ser maior que zero.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR PRODUTO

         ENCONTRADO <- FALSO
         CONTADOR <- 1
         
         ENQUANTO (CONTADOR <= INDICE -1) E (ENCONTRADO = FALSO) FACA

            SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

               ENCONTRADO <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Produto encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME[CONTADOR])
               ESCREVAL("Código: ",COD[CONTADOR])
               ESCREVAL("Preço: ", "R$",PRECO[CONTADOR])
               ESCREVAL("Estoque: ",ESTOQUE[CONTADOR])

            FIMSE
            
            CONTADOR <- CONTADOR + 1
            
         FIMENQUANTO
         
         //PRODUTO NÃO ENCONTRADO

         SE ENCONTRADO = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Produto não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 4 - ALTERAR PRODUTO
      //====================================================================

      SE (INFORMACAO = 4) ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          ALTERAR PRODUTO         ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO
         
         CODIGO_BUSCA <- 0

         ENQUANTO CODIGO_BUSCA <= 0 FACA

            ESCREVA("Digite o código do produto que deseja alterar: ")
            LEIA(ENTRADA)

            VALIDO <- VERDADEIRO

            SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

               VALIDO <- FALSO

            SENAO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_BUSCA <- CARACPNUM(ENTRADA)

               SE CODIGO_BUSCA = 0 ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Código inválido! Digite um valor entre 1 e 999.")

                  ESCREVAL()

               FIMSE

            SENAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Digite somente algarismos, de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR PRODUTO

         ENCONTRADO <- FALSO
         CONTADOR <- 1

         ENQUANTO (CONTADOR <= INDICE - 1) E (ENCONTRADO = FALSO) FACA

            SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

               ENCONTRADO <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Produto encontrado!")

               ESCREVAL()

               ESCREVAL("Nome atual: ",NOME[CONTADOR])
               ESCREVAL("Código atual: ",COD[CONTADOR])
               ESCREVAL("Preço atual: ",PRECO[CONTADOR])

               ESCREVAL()
               
               //VALIDAR NOVO NOME

               TEM_CARACTE <- FALSO

               ENQUANTO TEM_CARACTE = FALSO FACA

                  ESCREVA("Digite o novo nome: ")
                  LEIA(NOME_NOVO)

                  TEM_CARACTE <- FALSO

                  PARA AUXILIAR DE 1 ATE COMPR(NOME_NOVO) FACA

                     CARACTE_ATUAL <- COPIA(NOME_NOVO, AUXILIAR, 1)

                     SE ((CARACTE_ATUAL >= "A") E (CARACTE_ATUAL <= "Z")) OU ((CARACTE_ATUAL >= "a") E (CARACTE_ATUAL <= "z")) ENTAO

                        TEM_CARACTE <- VERDADEIRO

                     FIMSE

                  FIMPARA

                  SE TEM_CARACTE = FALSO ENTAO

                     ESCREVAL()
                     
                     ESCREVAL("ERRO: O nome deve conter pelo menos uma letra.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO
               
               //VALIDAR NOVO CÓDIGO

               CODIGO_NOVO <- 0

               ENQUANTO CODIGO_NOVO <= 0 FACA

                  ESCREVA("Digite o novo código: ")
                  LEIA(ENTRADA)

                  VALIDO <- VERDADEIRO

                  SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

                     VALIDO <- FALSO

                  SENAO

                     PARA I DE 1 ATE COMPR(ENTRADA) FACA

                        CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                        SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                           VALIDO <- FALSO

                        FIMSE

                     FIMPARA

                  FIMSE

                  SE VALIDO = VERDADEIRO ENTAO

                     CODIGO_NOVO <- CARACPNUM(ENTRADA)

                     SE CODIGO_NOVO = 0 ENTAO

                        ESCREVAL()
                        
                        ESCREVAL("ERRO: Código inválido! Digite um valor entre 1 e 999.")

                        ESCREVAL()

                     FIMSE

                  SENAO

                     ESCREVAL()
                     
                     ESCREVAL("ERRO: Digite somente algarismos, de 1 a 999.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO
               
               //VERIFICAR CÓDIGO DUPLICADO

               PODE_EXCLUIR <- VERDADEIRO

               PARA AUXILIAR DE 1 ATE INDICE - 1 FACA

                  SE (COD[AUXILIAR] = CODIGO_NOVO) E (AUXILIAR <> CONTADOR) ENTAO

                     PODE_EXCLUIR <- FALSO

                  FIMSE

               FIMPARA

               SE PODE_EXCLUIR = VERDADEIRO ENTAO
               
               //VALIDAR NOVO PREÇO

               PRECO_NOVO <- 0

               ENQUANTO PRECO_NOVO <= 0 FACA

                  VALIDO <- FALSO

                  ENQUANTO VALIDO = FALSO FACA

                     ESCREVA("Digite o novo preço: ")
                     LEIA(ENTRADA)

                     VALIDO <- VERDADEIRO

                     SEPARADOR_ENCONTRADO <- FALSO

                     QUANTIDADE_INTEIRA <- 0

                     QUANTIDADE_DECIMAL <- 0

                     //VALIDAR FORMATO DO PREÇO

                     SE COMPR(ENTRADA) = 0 ENTAO

                        VALIDO <- FALSO

                     SENAO

                        PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA, AUXILIAR, 1)

                           SE (CARACTE_ATUAL >= "0") E (CARACTE_ATUAL <= "9") ENTAO

                              SE SEPARADOR_ENCONTRADO = FALSO ENTAO

                                 QUANTIDADE_INTEIRA <- QUANTIDADE_INTEIRA + 1

                                 SE QUANTIDADE_INTEIRA > 9 ENTAO

                                    VALIDO <- FALSO

                                 FIMSE

                              SENAO

                                 QUANTIDADE_DECIMAL <- QUANTIDADE_DECIMAL + 1

                                 SE QUANTIDADE_DECIMAL > 2 ENTAO

                                    VALIDO <- FALSO

                                 FIMSE

                              FIMSE

                           SENAO

                              SE (CARACTE_ATUAL = ",") OU (CARACTE_ATUAL = ".") ENTAO

                                 SE SEPARADOR_ENCONTRADO ENTAO

                                    VALIDO <- FALSO

                                 SENAO

                                    SE (AUXILIAR = 1) OU (AUXILIAR = COMPR(ENTRADA)) ENTAO

                                       VALIDO <- FALSO

                                    FIMSE

                                       SEPARADOR_ENCONTRADO <- VERDADEIRO

                                 FIMSE

                              SENAO

                                 VALIDO <- FALSO

                              FIMSE

                           FIMSE

                        FIMPARA

                     FIMSE

                     SE VALIDO = FALSO ENTAO

                        ESCREVAL()
                           
                        ESCREVAL("ERRO: Digite um preço numérico válido.")

                        ESCREVAL()

                     FIMSE

                  FIMENQUANTO

                  //CONVERTER TEXTO PARA PREÇO

                  PARTE_INTEIRA <- 0

                  PARTE_FRACIONARIA <- 0

                  DIVISOR <- 1

                  PARTE_DECIMAL <- FALSO

                  PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA, AUXILIAR, 1)

                     SE (CARACTE_ATUAL = ",") OU (CARACTE_ATUAL = ".") ENTAO

                        PARTE_DECIMAL <- VERDADEIRO

                     SENAO

                        SE PARTE_DECIMAL = FALSO ENTAO

                           PARTE_INTEIRA <- PARTE_INTEIRA * 10 + CARACPNUM(CARACTE_ATUAL)

                        SENAO

                           PARTE_FRACIONARIA <- PARTE_FRACIONARIA * 10 + CARACPNUM(CARACTE_ATUAL)

                           DIVISOR <- DIVISOR * 10

                        FIMSE

                     FIMSE

                  FIMPARA

                  PRECO_NOVO <- PARTE_INTEIRA + (PARTE_FRACIONARIA / DIVISOR)

                  SE PRECO_NOVO <= 0 ENTAO

                     ESCREVAL()
                        
                     ESCREVAL("ERRO: O preço deve ser maior que zero.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO
                   
                   //ALTERAR PRODUTO

                   NOME[CONTADOR] <- NOME_NOVO
                   COD[CONTADOR] <- CODIGO_NOVO
                   PRECO[CONTADOR] <- PRECO_NOVO

                   ESCREVAL()

                   ESCREVAL("Produto alterado com sucesso!")

               SENAO
               
                  //CÓDIGO JÁ CADASTRADO

                  ESCREVAL()

                  ESCREVAL("ERRO: Código já cadastrado em outro produto!")
                  ESCREVAL("Alteração cancelada.")

               FIMSE

            FIMSE
            
            CONTADOR <- CONTADOR + 1
            
         FIMENQUANTO
         
         //PRODUTO NÃO ENCONTRADO

         SE ENCONTRADO = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Produto não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 5 - EXCLUIR PRODUTO
      //====================================================================

      SE (INFORMACAO = 5) ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          EXCLUIR PRODUTO         ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO
         
         CODIGO_BUSCA <- 0

         ENQUANTO CODIGO_BUSCA <= 0 FACA

            ESCREVA("Digite o código do produto que deseja excluir: ")
            LEIA(ENTRADA)

            VALIDO <- VERDADEIRO

            SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

               VALIDO <- FALSO

            SENAO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_BUSCA <- CARACPNUM(ENTRADA)

               SE CODIGO_BUSCA = 0 ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Código inválido! Digite um valor entre 1 e 999.")

                  ESCREVAL()

               FIMSE

            SENAO

               ESCREVAL()

               ESCREVAL("ERRO: Digite somente algarismos, de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR PRODUTO

         CONTADOR <- 1
         ENCONTRADO <- FALSO

         ENQUANTO (CONTADOR <= INDICE - 1) E (ENCONTRADO = FALSO) FACA

            SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

               ENCONTRADO <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Produto encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME[CONTADOR])
               ESCREVAL("Código: ",COD[CONTADOR])
               ESCREVAL("Preço: ", "R$",PRECO[CONTADOR])
               ESCREVAL("Estoque: ",ESTOQUE[CONTADOR])

               ESCREVAL()
               
               //VERIFICAR SE O PRODUTO POSSUI VENDAS

               PODE_EXCLUIR <- VERDADEIRO

               PARA AUXILIAR DE 1 ATE INDICE_VENDA - 1 FACA

                  SE COD_PRODUTO_VENDA[AUXILIAR] = CODIGO_BUSCA ENTAO

                     PODE_EXCLUIR <- FALSO

                  FIMSE

               FIMPARA

               //SE POSSUI VENDA, NÃO PODE EXCLUIR

               SE PODE_EXCLUIR = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Não é possível excluir este produto!")
                  ESCREVAL("O produto possui vendas registradas.")

               SENAO

                  //CONFIRMAR EXCLUSÃO

                  CONFIRMACAO <- ""

                  ENQUANTO (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") FACA

                     ESCREVA("Deseja realmente excluir este produto? (S/N): ")
                     LEIA(CONFIRMACAO)

                     SE (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Opção inválida! Digite S para confirmar ou N para cancelar.")
                     
                        ESCREVAL()

                     FIMSE

                  FIMENQUANTO
               
                  //EXCLUIR SE CONFIRMADO

                  SE (CONFIRMACAO = "S") OU (CONFIRMACAO = "s") ENTAO

                     PARA AUXILIAR DE CONTADOR ATE INDICE - 2 FACA

                        NOME[AUXILIAR] <- NOME[AUXILIAR + 1]
                        COD[AUXILIAR] <- COD[AUXILIAR + 1]
                        PRECO[AUXILIAR] <- PRECO[AUXILIAR + 1]
                        ESTOQUE[AUXILIAR] <- ESTOQUE[AUXILIAR + 1]

                     FIMPARA

                     INDICE <- INDICE - 1

                     ESCREVAL()

                     ESCREVAL("Produto excluído com sucesso!")

                  SENAO

                     ESCREVAL()

                     ESCREVAL("Exclusão cancelada.")

                  FIMSE

               FIMSE
            
            FIMSE

            CONTADOR <- CONTADOR + 1

         FIMENQUANTO
         
         //PRODUTO NÃO ENCONTRADO

         SE ENCONTRADO = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Produto não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 6 - ENTRADA DE ESTOQUE
      //====================================================================

      SE INFORMACAO = 6 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("       ENTRADA DE ESTOQUE         ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO
         
         CODIGO_BUSCA <- 0

         ENQUANTO CODIGO_BUSCA <= 0 FACA

            ESCREVA("Digite o código do produto: ")
            LEIA(ENTRADA)

            VALIDO <- VERDADEIRO

            SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

               VALIDO <- FALSO

            SENAO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_BUSCA <- CARACPNUM(ENTRADA)

               SE CODIGO_BUSCA = 0 ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Código inválido! Digite um valor entre 1 e 999.")

                  ESCREVAL()

               FIMSE

            SENAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Digite somente algarismos, de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR PRODUTO

         ENCONTRADO <- FALSO
         CONTADOR <- 1

         ENQUANTO (CONTADOR <= INDICE - 1) E (ENCONTRADO = FALSO) FACA

            SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

               ENCONTRADO <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Produto encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME[CONTADOR])
               ESCREVAL("Estoque atual: ",ESTOQUE[CONTADOR])

               ESCREVAL()
               
               //VALIDAR QUANTIDADE DE ENTRADA

               ESTOQUE_NOVO <- 0

               ENQUANTO ESTOQUE_NOVO <= 0 FACA

                  VALIDO <- FALSO

                  ENQUANTO VALIDO = FALSO FACA

                     ESCREVA("Digite a quantidade de entrada: ")
                     LEIA(ENTRADA)

                     VALIDO <- VERDADEIRO

                     SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 9) ENTAO

                        VALIDO <- FALSO

                     SENAO

                        PARA I DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                           SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMPARA

                     FIMSE

                     SE VALIDO = FALSO ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Digite um número inteiro positivo de até 9 algarismos.")

                        ESCREVAL()

                     FIMSE

                  FIMENQUANTO

                  //CONVERTER TEXTO PARA INTEIRO

                  ESTOQUE_NOVO <- 0

                  PARA I DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                     ESTOQUE_NOVO <- ESTOQUE_NOVO * 10 + CARACPNUM(CARACTE_ATUAL)

                  FIMPARA

                  SE ESTOQUE_NOVO <= 0 ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: A quantidade deve ser maior que zero.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO
               
               //ATUALIZAR ESTOQUE

               SE ESTOQUE[CONTADOR] <= 2147483647 - ESTOQUE_NOVO ENTAO

                  ESTOQUE[CONTADOR] <- ESTOQUE[CONTADOR] + ESTOQUE_NOVO

                  ESCREVAL()
                  ESCREVAL("Entrada realizada com sucesso!")
                  ESCREVAL("Novo estoque: ",ESTOQUE[CONTADOR])

               SENAO

                  ESCREVAL()
                  ESCREVAL("ERRO: A quantidade informada ultrapassa o limite permitido para o estoque.")
                  ESCREVAL("O estoque não foi alterado.")

               FIMSE

            FIMSE

            CONTADOR <- CONTADOR + 1

         FIMENQUANTO
         
         //PRODUTO NÃO ENCONTRADO

         SE ENCONTRADO = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Produto não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 7 - SAÍDA DE ESTOQUE
      //====================================================================

      SE INFORMACAO = 7 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("        SAÍDA DE ESTOQUE          ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO
         
         VALIDO <- FALSO

         ENQUANTO VALIDO = FALSO FACA

            ESCREVA("Digite o código do produto: ")
            LEIA(ENTRADA)

            SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

               VALIDO <- VERDADEIRO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            SENAO

               VALIDO <- FALSO

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_BUSCA <- CARACPNUM(ENTRADA)

               SE CODIGO_BUSCA <= 0 ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            SE VALIDO = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR PRODUTO

         ENCONTRADO <- FALSO
         CONTADOR <- 1

         ENQUANTO (CONTADOR <= INDICE - 1) E (ENCONTRADO = FALSO) FACA

            SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

               ENCONTRADO <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Produto encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME[CONTADOR])
               ESCREVAL("Estoque atual: ",ESTOQUE[CONTADOR])

               ESCREVAL()
               
               //VALIDAR QUANTIDADE DE SAÍDA

                SE ESTOQUE[CONTADOR] = 0 ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Não há estoque disponível para saída!")

                  ESCREVAL()

               SENAO

                  ESTOQUE_NOVO <- 0
                  VALIDO <- FALSO

                  ENQUANTO VALIDO = FALSO FACA

                     ESCREVA("Digite a quantidade de saída: ")
                     LEIA(ENTRADA)

                     SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 9) ENTAO

                        VALIDO <- VERDADEIRO

                        PARA I DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                           SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMPARA

                     SENAO

                        VALIDO <- FALSO

                     FIMSE

                     SE VALIDO = VERDADEIRO ENTAO

                        ESTOQUE_NOVO <- 0

                        PARA I DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                           ESTOQUE_NOVO <- ESTOQUE_NOVO * 10 + CARACPNUM(CARACTE_ATUAL)

                        FIMPARA

                        SE ESTOQUE_NOVO <= 0 ENTAO

                           VALIDO <- FALSO

                        SENAO

                           SE ESTOQUE_NOVO > ESTOQUE[CONTADOR] ENTAO

                              ESCREVAL()
                              
                              ESCREVAL("ERRO: Estoque insuficiente!")

                              ESCREVAL("Estoque disponível: ", ESTOQUE[CONTADOR])

                              ESCREVAL()

                              VALIDO <- FALSO

                           FIMSE

                        FIMSE

                     FIMSE

                     SE VALIDO = FALSO ENTAO

                        ESCREVAL()
                        
                        ESCREVAL("ERRO: Quantidade inválida ou superior ao estoque disponível.")

                        ESCREVAL()

                     FIMSE

                  FIMENQUANTO

                  //ATUALIZAR ESTOQUE

                  ESTOQUE[CONTADOR] <- ESTOQUE[CONTADOR] - ESTOQUE_NOVO

                  ESCREVAL()
                  ESCREVAL("Saída realizada com sucesso!")
                  ESCREVAL("Novo estoque: ", ESTOQUE[CONTADOR])

               FIMSE
               
            FIMSE

            CONTADOR <- CONTADOR + 1
            
         FIMENQUANTO
         
         //PRODUTO NÃO ENCONTRADO

         SE ENCONTRADO = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Produto não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 8 - CADASTRAR CLIENTE
      //====================================================================

      SE INFORMACAO = 8 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("         CADASTRAR CLIENTE        ")
         ESCREVAL("==================================")

         ESCREVAL()

         SE INDICE_CLIENTE > 999 ENTAO

            ESCREVAL("ERRO: Limite de clientes atingido!")

         SENAO

         //VALIDAR CÓDIGO DO CLIENTE

         ENCONTRADO_CLIENTE <- FALSO
         VALIDO <- FALSO

         ENQUANTO (VALIDO = FALSO) OU (ENCONTRADO_CLIENTE = VERDADEIRO) FACA

            ESCREVA("Digite o código do cliente: ")
            LEIA(ENTRADA)

            SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

               VALIDO <- VERDADEIRO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            SENAO

               VALIDO <- FALSO

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_CLIENTE_NOVO <- CARACPNUM(ENTRADA)

               SE CODIGO_CLIENTE_NOVO <= 0 ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            SE VALIDO = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

               ESCREVAL()

            SENAO

               //VERIFICAR CÓDIGO DUPLICADO

               ENCONTRADO_CLIENTE <- FALSO
               CONTADOR <- 1

               ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (ENCONTRADO_CLIENTE = FALSO) FACA

                  SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_NOVO ENTAO

                     ENCONTRADO_CLIENTE <- VERDADEIRO

                  FIMSE

                  CONTADOR <- CONTADOR + 1

               FIMENQUANTO

               SE ENCONTRADO_CLIENTE = VERDADEIRO ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Código já cadastrado!")
                  ESCREVAL("Digite outro código.")

                  ESCREVAL()

               FIMSE

            FIMSE

         FIMENQUANTO

         //VALIDAR NOME

         NOME_VALIDO <- FALSO

         ENQUANTO NOME_VALIDO = FALSO FACA

            ESCREVA("Digite o nome completo do cliente: ")
            LEIA(NOME_CLIENTE_NOVO)

            NOME_VALIDO <- VERDADEIRO

            TEM_CARACTE <- FALSO
            
            ESPACO_ANTERIOR <- VERDADEIRO

            SE COMPR(NOME_CLIENTE_NOVO) = 0 ENTAO

               NOME_VALIDO <- FALSO

            SENAO

               PARA CONTADOR DE 1 ATE COMPR(NOME_CLIENTE_NOVO) FACA

                  CARACTE_ATUAL <- COPIA(NOME_CLIENTE_NOVO, CONTADOR, 1)
                  AUXILIAR <- ASC(CARACTE_ATUAL)

                  SE CARACTE_ATUAL = " " ENTAO
                  
                     //REJEITAR ESPAÇO NO INÍCIO OU ESPAÇOS CONSECUTIVOS
                     
                     SE ESPACO_ANTERIOR = VERDADEIRO ENTAO
                     
                        NOME_VALIDO <- FALSO
                        
                     FIMSE
                     
                     ESPACO_ANTERIOR <- VERDADEIRO
                     
                  SENAO

                     ESPACO_ANTERIOR <- FALSO

                     //VALIDAR LETRAS

                     SE ((AUXILIAR >= ASC("A")) E (AUXILIAR <= ASC("Z"))) OU ((AUXILIAR >= ASC("a")) E (AUXILIAR <= ASC("z"))) ENTAO

                        TEM_CARACTE <- VERDADEIRO

                     SENAO

                        //LETRAS ACENTUADAS

                        SE AUXILIAR = 181 ENTAO

                           TEM_CARACTE <- VERDADEIRO

                        SENAO

                           SE AUXILIAR = 192 ENTAO

                              TEM_CARACTE <- VERDADEIRO

                           SENAO

                              SE AUXILIAR = 193 ENTAO

                                 TEM_CARACTE <- VERDADEIRO

                              SENAO

                                 SE AUXILIAR = 194 ENTAO

                                    TEM_CARACTE <- VERDADEIRO

                                 SENAO

                                    SE AUXILIAR = 195 ENTAO

                                       TEM_CARACTE <- VERDADEIRO

                                    SENAO

                                       SE AUXILIAR = 199 ENTAO

                                          TEM_CARACTE <- VERDADEIRO

                                       SENAO

                                          SE AUXILIAR = 200 ENTAO

                                             TEM_CARACTE <- VERDADEIRO

                                          SENAO

                                             SE AUXILIAR = 201 ENTAO

                                                TEM_CARACTE <- VERDADEIRO

                                             SENAO

                                                SE AUXILIAR = 202 ENTAO

                                                   TEM_CARACTE <- VERDADEIRO

                                                SENAO

                                                   SE AUXILIAR = 205 ENTAO

                                                      TEM_CARACTE <- VERDADEIRO

                                                   SENAO

                                                      SE AUXILIAR = 211 ENTAO

                                                         TEM_CARACTE <- VERDADEIRO

                                                      SENAO

                                                         SE AUXILIAR = 212 ENTAO

                                                            TEM_CARACTE <- VERDADEIRO

                                                         SENAO

                                                            SE AUXILIAR = 213 ENTAO

                                                               TEM_CARACTE <- VERDADEIRO

                                                            SENAO

                                                               SE AUXILIAR = 218 ENTAO

                                                                  TEM_CARACTE <- VERDADEIRO

                                                               SENAO

                                                                  SE AUXILIAR = 220 ENTAO

                                                                     TEM_CARACTE <- VERDADEIRO

                                                                  SENAO

                                                                     SE AUXILIAR = 224 ENTAO

                                                                        TEM_CARACTE <- VERDADEIRO

                                                                     SENAO

                                                                        SE AUXILIAR = 225 ENTAO

                                                                           TEM_CARACTE <- VERDADEIRO

                                                                        SENAO

                                                                           SE AUXILIAR = 226 ENTAO

                                                                              TEM_CARACTE <- VERDADEIRO

                                                                           SENAO

                                                                              SE AUXILIAR = 227 ENTAO

                                                                                 TEM_CARACTE <- VERDADEIRO

                                                                              SENAO

                                                                                 SE AUXILIAR = 231 ENTAO

                                                                                    TEM_CARACTE <- VERDADEIRO

                                                                                 SENAO

                                                                                    SE AUXILIAR = 232 ENTAO

                                                                                       TEM_CARACTE <- VERDADEIRO

                                                                                    SENAO

                                                                                       SE AUXILIAR = 233 ENTAO

                                                                                          TEM_CARACTE <- VERDADEIRO

                                                                                       SENAO

                                                                                          SE AUXILIAR = 234 ENTAO

                                                                                             TEM_CARACTE <- VERDADEIRO

                                                                                          SENAO

                                                                                             SE AUXILIAR = 237 ENTAO

                                                                                                TEM_CARACTE <- VERDADEIRO

                                                                                             SENAO

                                                                                                SE AUXILIAR = 243 ENTAO

                                                                                                   TEM_CARACTE <- VERDADEIRO

                                                                                                SENAO

                                                                                                   SE AUXILIAR = 244 ENTAO

                                                                                                      TEM_CARACTE <- VERDADEIRO

                                                                                                   SENAO

                                                                                                      SE AUXILIAR = 245 ENTAO

                                                                                                         TEM_CARACTE <- VERDADEIRO

                                                                                                      SENAO

                                                                                                         SE AUXILIAR = 250 ENTAO

                                                                                                            TEM_CARACTE <- VERDADEIRO

                                                                                                         SENAO

                                                                                                            SE AUXILIAR = 252 ENTAO

                                                                                                               TEM_CARACTE <- VERDADEIRO

                                                                                                            SENAO

                                                                                                               NOME_VALIDO <- FALSO

                                                                                                            FIMSE

                                                                                                         FIMSE

                                                                                                      FIMSE

                                                                                                   FIMSE

                                                                                                FIMSE

                                                                                             FIMSE

                                                                                          FIMSE

                                                                                       FIMSE

                                                                                    FIMSE

                                                                                 FIMSE

                                                                              FIMSE

                                                                           FIMSE

                                                                        FIMSE

                                                                     FIMSE

                                                                  FIMSE

                                                               FIMSE

                                                            FIMSE

                                                         FIMSE

                                                      FIMSE

                                                   FIMSE

                                                FIMSE

                                             FIMSE

                                          FIMSE

                                       FIMSE

                                    FIMSE

                                 FIMSE

                              FIMSE

                           FIMSE

                        FIMSE

                     FIMSE

                  FIMSE

               FIMPARA
               
               //REJEITAR ESPAÇO NO FINAL
               
               SE ESPACO_ANTERIOR = VERDADEIRO ENTAO

                  NOME_VALIDO <- FALSO

               FIMSE

            FIMSE
            
            //EXIGIR PELO MENOS UMA LETRA

            SE TEM_CARACTE = FALSO ENTAO

               NOME_VALIDO <- FALSO

            FIMSE

            SE NOME_VALIDO = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Nome inválido!")
               ESCREVAL("Digite um nome usando somente letras e espaços.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO

         //VALIDAR CPF

         CPF_VALIDO <- FALSO

         ENQUANTO CPF_VALIDO = FALSO FACA

            ESCREVA("Digite o CPF do cliente: ")
            LEIA(CPF_NOVO)

            CPF_VALIDO <- VERDADEIRO

            //VERIFICAR QUANTIDADE DE CARACTERES

            SE COMPR(CPF_NOVO) <> 11 ENTAO

               CPF_VALIDO <- FALSO

               ESCREVAL()
               
               ESCREVAL("ERRO: CPF inválido!")
               ESCREVAL("Digite o CPF com 11 números.")

               ESCREVAL()

            SENAO

               //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS
               
               PARA CONTADOR DE 1 ATE COMPR(CPF_NOVO) FACA

                  AUXILIAR <- ASC(COPIA(CPF_NOVO,CONTADOR,1))

                  SE AUXILIAR < ASC("0") ENTAO
                  
                     CPF_VALIDO <- FALSO
                     
                  SENAO
                  
                     SE AUXILIAR > ASC("9") ENTAO
                     
                        CPF_VALIDO <- FALSO
                      
                     FIMSE
                     
                  FIMSE
                  
               FIMPARA
               
               SE CPF_VALIDO = FALSO ENTAO
               
                  ESCREVAL()
                  
                  ESCREVAL("ERRO: CPF inválido!")
                  ESCREVAL("Digite somente números.")
                  
                  ESCREVAL()
                  
               SENAO
               
               //REJEITAR CPF COM TODOS OS NÚMEROS IGUAIS

               SE CPF_VALIDO = VERDADEIRO ENTAO

                  SE CPF_NOVO = "00000000000" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "11111111111" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "22222222222" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "33333333333" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "44444444444" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "55555555555" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "66666666666" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "77777777777" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "88888888888" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_NOVO = "99999999999" ENTAO

                     CPF_VALIDO <- FALSO

                  FIMSE

                  SE CPF_VALIDO = FALSO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: CPF inválido! Não são permitidos números repetidos.")

                     ESCREVAL()

                  FIMSE

               FIMSE
               
                  //VERIFICAR SE O CPF JÁ ESTÁ CADASTRADO
                  
                  SE CPF_VALIDO = VERDADEIRO ENTAO

                     CONTADOR <- 1

                     ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (CPF_VALIDO = VERDADEIRO) FACA

                        SE CPF_CLIENTE[CONTADOR] = CPF_NOVO ENTAO

                           CPF_VALIDO <- FALSO

                           ESCREVAL()
                           
                           ESCREVAL("ERRO: CPF já cadastrado!")
                           ESCREVAL("Digite outro CPF.")

                           ESCREVAL()

                        FIMSE

                        CONTADOR <- CONTADOR + 1

                     FIMENQUANTO

                  FIMSE

                  SE CPF_VALIDO = VERDADEIRO ENTAO

                  //CALCULAR PRIMEIRO DÍGITO

                  SOMA <- 0

                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,1,1)) - ASC("0")) * 10
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,2,1)) - ASC("0")) * 9
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,3,1)) - ASC("0")) * 8
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,4,1)) - ASC("0")) * 7
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,5,1)) - ASC("0")) * 6
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,6,1)) - ASC("0")) * 5
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,7,1)) - ASC("0")) * 4
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,8,1)) - ASC("0")) * 3
                  SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,9,1)) - ASC("0")) * 2

                  RESTO <- SOMA MOD 11

                  SE RESTO = 0 ENTAO

                     DIGITO1 <- 0

                  SENAO

                     SE RESTO = 1 ENTAO
                     
                        DIGITO1 <- 0
                        
                     SENAO
                     
                        DIGITO1 <- 11 - RESTO

                     FIMSE
                     
                  FIMSE

                  //PEGAR PRIMEIRO DÍGITO INFORMADO

                  DIGITO_INFORMADO1 <- ASC(COPIA(CPF_NOVO,10,1)) - ASC("0")

                  //VERIFICAR PRIMEIRO DÍGITO

                  SE DIGITO1 <> DIGITO_INFORMADO1 ENTAO

                     CPF_VALIDO <- FALSO

                     ESCREVAL()
                     
                     ESCREVAL("ERRO: CPF inválido!")
                     ESCREVAL("Primeiro dígito verificador incorreto.")

                     ESCREVAL()

                  SENAO

                     //CALCULAR SEGUNDO DÍGITO

                     SOMA <- 0

                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,1,1)) - ASC("0")) * 11
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,2,1)) - ASC("0")) * 10
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,3,1)) - ASC("0")) * 9
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,4,1)) - ASC("0")) * 8
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,5,1)) - ASC("0")) * 7
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,6,1)) - ASC("0")) * 6
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,7,1)) - ASC("0")) * 5
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,8,1)) - ASC("0")) * 4
                     SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,9,1)) - ASC("0")) * 3
                     SOMA <- SOMA + DIGITO1 * 2

                     RESTO <- SOMA MOD 11

                     SE RESTO = 0 ENTAO

                        DIGITO2 <- 0

                     SENAO

                        SE RESTO = 1 ENTAO

                           DIGITO2 <- 0

                        SENAO

                           DIGITO2 <- 11 - RESTO

                        FIMSE

                     FIMSE

                     //PEGAR SEGUNDO DÍGITO INFORMADO

                     DIGITO_INFORMADO2 <- ASC(COPIA(CPF_NOVO,11,1)) - ASC("0")

                     //VERIFICAR SEGUNDO DÍGITO

                     SE DIGITO2 <> DIGITO_INFORMADO2 ENTAO

                        CPF_VALIDO <- FALSO

                        ESCREVAL()
                        
                        ESCREVAL("ERRO: CPF inválido!")
                        ESCREVAL("Segundo dígito verificador incorreto.")

                        ESCREVAL()

                     FIMSE

                  FIMSE

               FIMSE

            FIMSE
            
         FIMSE
            
         FIMENQUANTO

         //VALIDAR TELEFONE

         TELEFONE_VALIDO <- FALSO

         ENQUANTO TELEFONE_VALIDO = FALSO FACA

            ESCREVA("Digite o telefone do cliente: ")
            LEIA(TELEFONE_NOVO)

            TELEFONE_VALIDO <- VERDADEIRO

            //VERIFICAR QUANTIDADE DE CARACTERES

            SE COMPR(TELEFONE_NOVO) <> 11 ENTAO

               TELEFONE_VALIDO <- FALSO

               ESCREVAL()

               ESCREVAL("ERRO: Telefone inválido!")
               ESCREVAL("Digite o telefone com 11 números.")

               ESCREVAL()

            SENAO

               //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS

               PARA CONTADOR DE 1 ATE 11 FACA

                  AUXILIAR <- ASC(COPIA(TELEFONE_NOVO,CONTADOR,1))

                  SE AUXILIAR < ASC("0") ENTAO

                     TELEFONE_VALIDO <- FALSO

                  SENAO

                     SE AUXILIAR > ASC("9") ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                  FIMSE

               FIMPARA

               SE TELEFONE_VALIDO = FALSO ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Telefone inválido!")
                  ESCREVAL("Digite somente números.")

                  ESCREVAL()

               FIMSE

            FIMSE
            
            //REJEITAR TELEFONE COM TODOS OS NÚMEROS IGUAIS
            
             SE TELEFONE_VALIDO = VERDADEIRO ENTAO

               SE TELEFONE_NOVO = "00000000000" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "11111111111" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "22222222222" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "33333333333" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "44444444444" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "55555555555" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "66666666666" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "77777777777" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "88888888888" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_NOVO = "99999999999" ENTAO

                  TELEFONE_VALIDO <- FALSO

               FIMSE

               SE TELEFONE_VALIDO = FALSO ENTAO

                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Telefone inválido! Não são permitidos números repetidos.")

                  ESCREVAL()

               FIMSE

            FIMSE

            //VERIFICAR TELEFONE DUPLICADO

            SE TELEFONE_VALIDO = VERDADEIRO ENTAO

               TELEFONE_DUPLICADO <- FALSO
               CONTADOR <- 1

               ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (TELEFONE_DUPLICADO = FALSO) FACA

                  SE TELEFONE_CLIENTE[CONTADOR] = TELEFONE_NOVO ENTAO

                     TELEFONE_DUPLICADO <- VERDADEIRO

                  FIMSE

                  CONTADOR <- CONTADOR + 1

               FIMENQUANTO

               SE TELEFONE_DUPLICADO = VERDADEIRO ENTAO

                  TELEFONE_VALIDO <- FALSO

                  ESCREVAL()

                  ESCREVAL("ERRO: Este telefone já está cadastrado para outro cliente.")

                  ESCREVAL()

               FIMSE

            FIMSE

            SE TELEFONE_VALIDO = FALSO ENTAO

               ESCREVAL()

            FIMSE

         FIMENQUANTO

         //ARMAZENAR CLIENTE

         COD_CLIENTE[INDICE_CLIENTE] <- CODIGO_CLIENTE_NOVO
         NOME_CLIENTE[INDICE_CLIENTE] <- NOME_CLIENTE_NOVO
         CPF_CLIENTE[INDICE_CLIENTE] <- CPF_NOVO
         TELEFONE_CLIENTE[INDICE_CLIENTE] <- TELEFONE_NOVO

         INDICE_CLIENTE <- INDICE_CLIENTE + 1

         ESCREVAL()

         ESCREVAL("Cliente cadastrado com sucesso!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 9 - LISTAR CLIENTES
      //====================================================================

      SE INFORMACAO = 9 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          LISTAR CLIENTES         ")
         ESCREVAL("==================================")

         ESCREVAL()

         SE INDICE_CLIENTE = 1 ENTAO

            ESCREVAL("Nenhum cliente cadastrado!")

         SENAO

            PARA CONTADOR DE 1 ATE INDICE_CLIENTE - 1 FACA

               ESCREVAL("Cliente ", CONTADOR)

               ESCREVAL()

               ESCREVAL("Nome: ",NOME_CLIENTE[CONTADOR])
               ESCREVAL("Código: ",COD_CLIENTE[CONTADOR])
               ESCREVAL("CPF: ",CPF_CLIENTE[CONTADOR])
               ESCREVAL("Telefone: ",TELEFONE_CLIENTE[CONTADOR])

               ESCREVAL()
               
               ESCREVAL("----------------------------------")
               
               ESCREVAL()

            FIMPARA

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 10 - BUSCAR CLIENTE
      //====================================================================

      SE INFORMACAO = 10 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          BUSCAR CLIENTE          ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO

         ENCONTRADO_CLIENTE <- FALSO

         VALIDO <- FALSO

         ENQUANTO (VALIDO = FALSO) OU (ENCONTRADO_CLIENTE = VERDADEIRO) FACA

            ESCREVA("Digite o código do cliente: ")
            LEIA(ENTRADA)

            VALIDO <- VERDADEIRO

            //VERIFICAR QUANTIDADE DE CARACTERES

            SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

               VALIDO <- FALSO

            SENAO

               //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            FIMSE

            //CONVERTER SOMENTE SE A ENTRADA FOR VÁLIDA

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_CLIENTE_BUSCA <- CARACPNUM(ENTRADA)

               SE (CODIGO_CLIENTE_BUSCA < 1) OU (CODIGO_CLIENTE_BUSCA > 999) ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            //EXIBIR ERRO

            SE VALIDO = FALSO ENTAO

               ESCREVAL()

               ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR CLIENTE

         ENCONTRADO_CLIENTE <- FALSO
         CONTADOR <- 1

         ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (ENCONTRADO_CLIENTE = FALSO) FACA

            SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_BUSCA ENTAO

               ENCONTRADO_CLIENTE <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Cliente encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME_CLIENTE[CONTADOR])
               ESCREVAL("Código: ",COD_CLIENTE[CONTADOR])
               ESCREVAL("CPF: ",CPF_CLIENTE[CONTADOR])
               ESCREVAL("Telefone: ",TELEFONE_CLIENTE[CONTADOR])

            FIMSE

            CONTADOR <- CONTADOR + 1
            
         FIMENQUANTO
         
         //CLIENTE NÃO ENCONTRADO

         SE ENCONTRADO_CLIENTE = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Cliente não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 11 - ALTERAR CLIENTE
      //====================================================================

      SE INFORMACAO = 11 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          ALTERAR CLIENTE         ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VALIDAR CÓDIGO

         ENCONTRADO_CLIENTE <- FALSO
         VALIDO <- FALSO

         ENQUANTO (VALIDO = FALSO) OU (ENCONTRADO_CLIENTE = VERDADEIRO) FACA

            ESCREVA("Digite o código do cliente que deseja alterar: ")
            LEIA(ENTRADA)

            SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

               VALIDO <- VERDADEIRO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            SENAO

               VALIDO <- FALSO

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_CLIENTE_BUSCA <- CARACPNUM(ENTRADA)

               SE (CODIGO_CLIENTE_BUSCA < 1) OU (CODIGO_CLIENTE_BUSCA > 999) ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            SE VALIDO = FALSO ENTAO

               ESCREVAL()

               ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR CLIENTE

         ENCONTRADO_CLIENTE <- FALSO
         CONTADOR <- 1

         ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (ENCONTRADO_CLIENTE = FALSO) FACA

            SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_BUSCA ENTAO

               ENCONTRADO_CLIENTE <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Cliente encontrado!")

               ESCREVAL()

               ESCREVAL("Nome atual: ",NOME_CLIENTE[CONTADOR])
               ESCREVAL("Código atual: ",COD_CLIENTE[CONTADOR])
               ESCREVAL("CPF atual: ",CPF_CLIENTE[CONTADOR])
               ESCREVAL("Telefone atual: ",TELEFONE_CLIENTE[CONTADOR])

               ESCREVAL()

               //NOVO NOME

               NOME_VALIDO <- FALSO

               ENQUANTO NOME_VALIDO = FALSO FACA

                  ESCREVA("Digite o novo nome: ")
                  LEIA(NOME_CLIENTE_NOVO)

                  NOME_VALIDO <- VERDADEIRO

                  TEM_CARACTE <- FALSO

                  ESPACO_ANTERIOR <- VERDADEIRO

                  SE COMPR(NOME_CLIENTE_NOVO) = 0 ENTAO

                     NOME_VALIDO <- FALSO

                  SENAO

                     PARA CONTADOR_NOME DE 1 ATE COMPR(NOME_CLIENTE_NOVO) FACA

                        CARACTE_ATUAL <- COPIA(NOME_CLIENTE_NOVO, CONTADOR_NOME, 1)
                        AUXILIAR <- ASC(CARACTE_ATUAL)

                        SE CARACTE_ATUAL = " " ENTAO

                           //REJEITAR ESPAÇO NO INÍCIO OU ESPAÇOS CONSECUTIVOS

                           SE ESPACO_ANTERIOR = VERDADEIRO ENTAO

                              NOME_VALIDO <- FALSO

                           FIMSE

                           ESPACO_ANTERIOR <- VERDADEIRO

                        SENAO

                           ESPACO_ANTERIOR <- FALSO

                           //VALIDAR LETRAS

                           SE ((AUXILIAR >= ASC("A")) E (AUXILIAR <= ASC("Z"))) OU ((AUXILIAR >= ASC("a")) E (AUXILIAR <= ASC("z"))) ENTAO

                              TEM_CARACTE <- VERDADEIRO

                           SENAO

                              //LETRAS ACENTUADAS

                              SE AUXILIAR = 181 ENTAO

                                 TEM_CARACTE <- VERDADEIRO

                              SENAO

                                 SE AUXILIAR = 192 ENTAO

                                    TEM_CARACTE <- VERDADEIRO

                                 SENAO

                                    SE AUXILIAR = 193 ENTAO

                                       TEM_CARACTE <- VERDADEIRO

                                    SENAO

                                       SE AUXILIAR = 194 ENTAO

                                          TEM_CARACTE <- VERDADEIRO

                                       SENAO

                                          SE AUXILIAR = 195 ENTAO

                                             TEM_CARACTE <- VERDADEIRO

                                          SENAO

                                             SE AUXILIAR = 199 ENTAO

                                                TEM_CARACTE <- VERDADEIRO

                                             SENAO

                                                SE AUXILIAR = 200 ENTAO

                                                   TEM_CARACTE <- VERDADEIRO

                                                SENAO

                                                   SE AUXILIAR = 201 ENTAO

                                                      TEM_CARACTE <- VERDADEIRO

                                                   SENAO

                                                      SE AUXILIAR = 202 ENTAO

                                                         TEM_CARACTE <- VERDADEIRO

                                                      SENAO

                                                         SE AUXILIAR = 205 ENTAO

                                                            TEM_CARACTE <- VERDADEIRO

                                                         SENAO

                                                            SE AUXILIAR = 211 ENTAO

                                                               TEM_CARACTE <- VERDADEIRO

                                                            SENAO

                                                               SE AUXILIAR = 212 ENTAO

                                                                  TEM_CARACTE <- VERDADEIRO

                                                               SENAO

                                                                  SE AUXILIAR = 213 ENTAO

                                                                     TEM_CARACTE <- VERDADEIRO

                                                                  SENAO

                                                                     SE AUXILIAR = 218 ENTAO

                                                                        TEM_CARACTE <- VERDADEIRO

                                                                     SENAO

                                                                        SE AUXILIAR = 220 ENTAO

                                                                           TEM_CARACTE <- VERDADEIRO

                                                                        SENAO

                                                                           SE AUXILIAR = 224 ENTAO

                                                                              TEM_CARACTE <- VERDADEIRO

                                                                           SENAO

                                                                              SE AUXILIAR = 225 ENTAO

                                                                                 TEM_CARACTE <- VERDADEIRO

                                                                              SENAO

                                                                                 SE AUXILIAR = 226 ENTAO

                                                                                    TEM_CARACTE <- VERDADEIRO

                                                                                 SENAO

                                                                                    SE AUXILIAR = 227 ENTAO

                                                                                       TEM_CARACTE <- VERDADEIRO

                                                                                    SENAO

                                                                                       SE AUXILIAR = 231 ENTAO

                                                                                          TEM_CARACTE <- VERDADEIRO

                                                                                       SENAO

                                                                                          SE AUXILIAR = 232 ENTAO

                                                                                             TEM_CARACTE <- VERDADEIRO

                                                                                          SENAO

                                                                                             SE AUXILIAR = 233 ENTAO

                                                                                                TEM_CARACTE <- VERDADEIRO

                                                                                             SENAO

                                                                                                SE AUXILIAR = 234 ENTAO

                                                                                                   TEM_CARACTE <- VERDADEIRO

                                                                                                SENAO

                                                                                                   SE AUXILIAR = 237 ENTAO

                                                                                                      TEM_CARACTE <- VERDADEIRO

                                                                                                   SENAO

                                                                                                      SE AUXILIAR = 243 ENTAO

                                                                                                         TEM_CARACTE <- VERDADEIRO

                                                                                                      SENAO

                                                                                                         SE AUXILIAR = 244 ENTAO

                                                                                                            TEM_CARACTE <- VERDADEIRO

                                                                                                         SENAO

                                                                                                            SE AUXILIAR = 245 ENTAO

                                                                                                               TEM_CARACTE <- VERDADEIRO

                                                                                                            SENAO

                                                                                                               SE AUXILIAR = 250 ENTAO

                                                                                                                  TEM_CARACTE <- VERDADEIRO

                                                                                                               SENAO

                                                                                                                  SE AUXILIAR = 252 ENTAO

                                                                                                                     TEM_CARACTE <- VERDADEIRO

                                                                                                                  SENAO

                                                                                                                     NOME_VALIDO <- FALSO

                                                                                                                  FIMSE

                                                                                                               FIMSE

                                                                                                            FIMSE

                                                                                                         FIMSE

                                                                                                      FIMSE

                                                                                                   FIMSE

                                                                                                FIMSE

                                                                                             FIMSE

                                                                                          FIMSE

                                                                                       FIMSE

                                                                                    FIMSE

                                                                                 FIMSE

                                                                              FIMSE

                                                                           FIMSE

                                                                        FIMSE

                                                                     FIMSE

                                                                  FIMSE

                                                               FIMSE

                                                            FIMSE

                                                         FIMSE

                                                      FIMSE

                                                   FIMSE

                                                FIMSE

                                             FIMSE

                                          FIMSE

                                       FIMSE

                                    FIMSE

                                 FIMSE

                              FIMSE

                           FIMSE

                        FIMSE

                     FIMPARA

                     //REJEITAR ESPAÇO NO FINAL

                     SE ESPACO_ANTERIOR = VERDADEIRO ENTAO

                        NOME_VALIDO <- FALSO

                     FIMSE

                  FIMSE

                  //EXIGIR PELO MENOS UMA LETRA

                  SE TEM_CARACTE = FALSO ENTAO

                     NOME_VALIDO <- FALSO

                  FIMSE

                  SE NOME_VALIDO = FALSO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: Nome inválido!")
                     ESCREVAL("Digite um nome usando somente letras e espaços.")

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO

               //NOVO CPF
               
               CPF_VALIDO <- FALSO
               
               ENQUANTO CPF_VALIDO = FALSO FACA

                  ESCREVA("Digite o novo CPF: ")
                  LEIA(CPF_NOVO)
                  
                  CPF_VALIDO <- VERDADEIRO
                  
                  //VALIDAR TAMANHO DO CPF
                  
                  SE COMPR(CPF_NOVO) <> 11 ENTAO
                  
                     CPF_VALIDO <- FALSO
                     
                     ESCREVAL()
                     
                     ESCREVAL("ERRO: O CPF deve conter exatamente 11 caracteres.")
                     
                  SENAO
                  
                     //VALIDAR CARACTERES DO CPF
                     
                     PARA CONTADOR_CPF DE 1 ATE 11 FACA
                     
                        AUXILIAR <- ASC(COPIA(CPF_NOVO,CONTADOR_CPF,1))

                           SE AUXILIAR < ASC("0") ENTAO

                              CPF_VALIDO <- FALSO

                           SENAO

                              SE AUXILIAR > ASC("9") ENTAO

                                 CPF_VALIDO <- FALSO

                              FIMSE

                           FIMSE
                        
                     FIMPARA
                     
                     SE CPF_VALIDO = FALSO ENTAO
                     
                        ESCREVAL()
                        
                        ESCREVAL("ERRO: O CPF deve conter somente números.")
                        
                     FIMSE
                     
                  FIMSE
                  
                  //REJEITAR CPF COM TODOS OS NÚMEROS IGUAIS

                  SE CPF_VALIDO = VERDADEIRO ENTAO

                     SE CPF_NOVO = "00000000000" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "11111111111" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "22222222222" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "33333333333" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "44444444444" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "55555555555" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "66666666666" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "77777777777" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "88888888888" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_NOVO = "99999999999" ENTAO

                        CPF_VALIDO <- FALSO

                     FIMSE

                     SE CPF_VALIDO = FALSO ENTAO

                        ESCREVAL()
                        
                        ESCREVAL("ERRO: CPF inválido.")

                     FIMSE

                  FIMSE
                  
                  //VALIDAR DÍGITOS DO CPF
                  
                  SE CPF_VALIDO = VERDADEIRO ENTAO
                  
                     SOMA <- 0
                     
                     PARA AUXILIAR DE 1 ATE 9 FACA
                     
                        SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,AUXILIAR,1)) - ASC("0")) * (11 - AUXILIAR)
                        
                     FIMPARA
                     
                     RESTO <- SOMA MOD 11
                     
                     SE RESTO < 2 ENTAO
                     
                        DIGITO1 <- 0
                        
                     SENAO
                     
                        DIGITO1 <- 11 - RESTO
                        
                     FIMSE
                     
                     //COMPARAR PRIMEIRO DÍGITO
                     
                     SE (ASC(COPIA(CPF_NOVO,10,1)) - ASC("0")) <> DIGITO1 ENTAO

                        CPF_VALIDO <- FALSO
                        
                     FIMSE
                     
                     //CALCULAR SEGUNDO DÍGITO SOMENTE SE VÁLIDO
                     
                     SE CPF_VALIDO = VERDADEIRO ENTAO
                     
                        SOMA <- 0
                     
                        PARA AUXILIAR DE 1 ATE 10 FACA
                     
                           SOMA <- SOMA + (ASC(COPIA(CPF_NOVO,AUXILIAR,1)) - ASC("0")) * (12 - AUXILIAR)
                        
                        FIMPARA
                     
                        RESTO <- SOMA MOD 11
                     
                        SE RESTO < 2 ENTAO
                     
                           DIGITO2 <- 0
                        
                        SENAO
                     
                           DIGITO2 <- 11 - RESTO
                        
                        FIMSE
                        
                        //COMPARAR SEGUNDO DÍGITO
                     
                        SE (ASC(COPIA(CPF_NOVO,11,1)) - ASC("0")) <> DIGITO2 ENTAO
                     
                           CPF_VALIDO <- FALSO
                        
                        FIMSE
                        
                     FIMSE
                     
                     SE CPF_VALIDO = FALSO ENTAO
                     
                        ESCREVAL()
                        
                        ESCREVAL("ERRO: CPF inválido.")
                        
                     FIMSE
                     
                  FIMSE
                  
                  //VERIFICAR CPF DUPLICADO
                  
                  SE CPF_VALIDO = VERDADEIRO ENTAO
                  
                     CPF_DUPLICADO <- FALSO
                     
                     AUXILIAR <- 1
                     
                     ENQUANTO (AUXILIAR <= INDICE_CLIENTE - 1) E (CPF_DUPLICADO = FALSO) FACA
                     
                        SE (CPF_CLIENTE[AUXILIAR] = CPF_NOVO) E (AUXILIAR <> CONTADOR) ENTAO
                        
                           CPF_DUPLICADO <- VERDADEIRO
                           
                        FIMSE
                        
                        AUXILIAR <- AUXILIAR + 1
                        
                     FIMENQUANTO
                     
                     SE CPF_DUPLICADO = VERDADEIRO ENTAO
                     
                        CPF_VALIDO <- FALSO
                        
                        ESCREVAL()
                        
                        ESCREVAL("ERRO: Este CPF já está cadastrado para outro cliente.")
                        
                     FIMSE
                     
                  FIMSE
                  
                  SE CPF_VALIDO = FALSO ENTAO
                  
                     ESCREVAL()
                     
                  FIMSE
                  
               FIMENQUANTO

               //NOVO TELEFONE
               
               TELEFONE_VALIDO <- FALSO
               
               ENQUANTO TELEFONE_VALIDO = FALSO FACA

                  ESCREVA("Digite o novo telefone: ")
                  LEIA(TELEFONE_NOVO)
                  
                  TELEFONE_VALIDO <- VERDADEIRO
                  
                  //VALIDAR TAMANHO DO TELEFONE
                  
                  SE COMPR(TELEFONE_NOVO) <> 11 ENTAO
                  
                     TELEFONE_VALIDO <- FALSO
                     
                     ESCREVAL()
                     
                     ESCREVAL("ERRO: O telefone deve conter exatamente 11 caracteres.")
                     
                  SENAO
                  
                     //VALIDAR CARACTERES DO TELEFONE

                     PARA AUXILIAR DE 1 ATE 11 FACA
                     
                        DIGITO1 <- ASC(COPIA(TELEFONE_NOVO,AUXILIAR,1))

                        SE DIGITO1 < ASC("0") ENTAO

                           TELEFONE_VALIDO <- FALSO

                        SENAO
                        
                           SE DIGITO1 > ASC("9") ENTAO
                           
                              TELEFONE_VALIDO <- FALSO
                              
                           FIMSE

                        FIMSE

                     FIMPARA
                     
                     SE TELEFONE_VALIDO = FALSO ENTAO
                     
                        ESCREVAL()
                        
                        ESCREVAL("ERRO: O telefone deve conter somente números.")
                        
                     FIMSE
                     
                  FIMSE
                  
                  //REJEITAR TELEFONE COM TODOS OS NÚMEROS IGUAIS

                  SE TELEFONE_VALIDO = VERDADEIRO ENTAO

                     SE TELEFONE_NOVO = "00000000000" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "11111111111" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "22222222222" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "33333333333" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "44444444444" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "55555555555" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "66666666666" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "77777777777" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "88888888888" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_NOVO = "99999999999" ENTAO

                        TELEFONE_VALIDO <- FALSO

                     FIMSE

                     SE TELEFONE_VALIDO = FALSO ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Telefone inválido. Não são permitidos números repetidos.")

                        ESCREVAL()

                     FIMSE

                  FIMSE
                  
                  //VERIFICAR TELEFONE DUPLICADO
                  
                  SE TELEFONE_VALIDO = VERDADEIRO ENTAO
                  
                     TELEFONE_DUPLICADO <- FALSO
                     
                     AUXILIAR <- 1
                     
                      ENQUANTO (AUXILIAR <= INDICE_CLIENTE - 1) E (TELEFONE_DUPLICADO = FALSO) FACA

                        SE (TELEFONE_CLIENTE[AUXILIAR] = TELEFONE_NOVO) E (AUXILIAR <> CONTADOR) ENTAO

                           TELEFONE_DUPLICADO <- VERDADEIRO

                        FIMSE

                        AUXILIAR <- AUXILIAR + 1

                      FIMENQUANTO

                      SE TELEFONE_DUPLICADO = VERDADEIRO ENTAO

                         TELEFONE_VALIDO <- FALSO

                         ESCREVAL()
                         
                         ESCREVAL("ERRO: Este telefone já está cadastrado para outro cliente.")

                         ESCREVAL()

                      FIMSE

                  FIMSE

                  SE TELEFONE_VALIDO = FALSO ENTAO

                     ESCREVAL()

                  FIMSE

               FIMENQUANTO

               //ATUALIZAR CLIENTE

               NOME_CLIENTE[CONTADOR] <- NOME_CLIENTE_NOVO
               CPF_CLIENTE[CONTADOR] <- CPF_NOVO
               TELEFONE_CLIENTE[CONTADOR] <- TELEFONE_NOVO

               ESCREVAL()

               ESCREVAL("Cliente alterado com sucesso!")

            FIMSE
            
            CONTADOR <- CONTADOR + 1

         FIMENQUANTO
         
         //CLIENTE NÃO ENCONTRADO

         SE ENCONTRADO_CLIENTE = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Cliente não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 12 - EXCLUIR CLIENTE
      //====================================================================

      SE INFORMACAO = 12 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          EXCLUIR CLIENTE         ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VALIDAR CÓDIGO

         ENCONTRADO_CLIENTE <- FALSO
         VALIDO <- FALSO

         ENQUANTO (VALIDO = FALSO) OU (ENCONTRADO_CLIENTE = VERDADEIRO) FACA

            ESCREVA("Digite o código do cliente que deseja excluir: ")
            LEIA(ENTRADA)

            SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

               VALIDO <- VERDADEIRO

               PARA I DE 1 ATE COMPR(ENTRADA) FACA

                  CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                  SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMPARA

            SENAO

               VALIDO <- FALSO

            FIMSE

            SE VALIDO = VERDADEIRO ENTAO

               CODIGO_CLIENTE_BUSCA <- CARACPNUM(ENTRADA)

               SE (CODIGO_CLIENTE_BUSCA < 1) OU (CODIGO_CLIENTE_BUSCA > 999) ENTAO

                  VALIDO <- FALSO

               FIMSE

            FIMSE

            SE VALIDO = FALSO ENTAO

               ESCREVAL()

               ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

               ESCREVAL()

            FIMSE

         FIMENQUANTO
         
         //BUSCAR CLIENTE

         CONTADOR <- 1
         ENCONTRADO_CLIENTE <- FALSO

         ENQUANTO (CONTADOR <= INDICE_CLIENTE - 1) E (ENCONTRADO_CLIENTE = FALSO) FACA

            SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_BUSCA ENTAO

               ENCONTRADO_CLIENTE <- VERDADEIRO

               ESCREVAL()

               ESCREVAL("Cliente encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME_CLIENTE[CONTADOR])
               ESCREVAL("Código: ",COD_CLIENTE[CONTADOR])
               ESCREVAL("CPF: ",CPF_CLIENTE[CONTADOR])
               ESCREVAL("Telefone: ",TELEFONE_CLIENTE[CONTADOR])

               ESCREVAL()
               
               //VERIFICAR SE O CLIENTE POSSUI VENDAS
               
               PODE_EXCLUIR <- VERDADEIRO
               
               PARA AUXILIAR DE 1 ATE INDICE_VENDA - 1 FACA
               
                  SE COD_CLIENTE_VENDA[AUXILIAR] = CODIGO_CLIENTE_BUSCA ENTAO

                     PODE_EXCLUIR <- FALSO
                     
                  FIMSE
                  
               FIMPARA
               
               //SE POSSUI VENDA, NÃO PODE EXCLUIR
               
               SE PODE_EXCLUIR = FALSO ENTAO
               
                  ESCREVAL()
                  
                  ESCREVAL("ERRO: Não é possível excluir este cliente!")
                  ESCREVAL("O cliente possui vendas registradas.")
                  
               SENAO
               
                  //CONFIRMAR EXCLUSÃO

                  CONFIRMACAO_CLIENTE <- ""

                  ENQUANTO (CONFIRMACAO_CLIENTE <> "S") E (CONFIRMACAO_CLIENTE <> "s") E (CONFIRMACAO_CLIENTE <> "N") E (CONFIRMACAO_CLIENTE <> "n") FACA

                     ESCREVA("Deseja realmente excluir este cliente? (S/N): ")
                     LEIA(CONFIRMACAO_CLIENTE)

                     SE (CONFIRMACAO_CLIENTE <> "S") E (CONFIRMACAO_CLIENTE <> "s") E (CONFIRMACAO_CLIENTE <> "N") E (CONFIRMACAO_CLIENTE <> "n") ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Opção inválida! Digite S para confirmar ou N para cancelar.")

                     FIMSE

                  FIMENQUANTO
                  
                  //EXCLUIR SE CONFIRMADO

                  SE (CONFIRMACAO_CLIENTE = "S") OU (CONFIRMACAO_CLIENTE = "s") ENTAO

                     PARA AUXILIAR DE CONTADOR ATE INDICE_CLIENTE - 2 FACA

                        NOME_CLIENTE[AUXILIAR] <- NOME_CLIENTE[AUXILIAR + 1]
                        COD_CLIENTE[AUXILIAR] <- COD_CLIENTE[AUXILIAR + 1]
                        CPF_CLIENTE[AUXILIAR] <- CPF_CLIENTE[AUXILIAR + 1]
                        TELEFONE_CLIENTE[AUXILIAR] <- TELEFONE_CLIENTE[AUXILIAR + 1]

                     FIMPARA

                     INDICE_CLIENTE <- INDICE_CLIENTE - 1

                     ESCREVAL()

                     ESCREVAL("Cliente excluído com sucesso!")

                  SENAO

                     ESCREVAL()

                     ESCREVAL("Exclusão cancelada.")

                  FIMSE

               FIMSE
               
            FIMSE

            CONTADOR <- CONTADOR + 1

         FIMENQUANTO
         
         //CLIENTE NÃO ENCONTRADO

         SE ENCONTRADO_CLIENTE = FALSO ENTAO

            ESCREVAL()

            ESCREVAL("ERRO: Cliente não encontrado!")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 13 - REALIZAR VENDA
      //====================================================================

      SE INFORMACAO = 13 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          REALIZAR VENDA          ")
         ESCREVAL("==================================")

         ESCREVAL()
         
         //VERIFICAR LIMITE DE VENDAS

         SE INDICE_VENDA > 999 ENTAO

            ESCREVAL("ERRO: Limite de vendas atingido!")
            ESCREVAL("Não é possível registrar novas vendas.")

         SENAO
         
         //VERIFICAR SE EXISTE CLIENTE CADASTRADO
         
         SE INDICE_CLIENTE = 1 ENTAO

            ESCREVAL("ERRO: Nenhum cliente cadastrado!")

         SENAO
         
            //VALIDAR CÓDIGO DO CLIENTE

            VALIDO <- FALSO

            ENQUANTO VALIDO = FALSO FACA

               ESCREVA("Digite o código do cliente: ")
               LEIA(ENTRADA)

               VALIDO <- VERDADEIRO

               //VERIFICAR QUANTIDADE DE CARACTERES

               SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

                  VALIDO <- FALSO

               SENAO

                  //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS

                  PARA I DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                     SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMPARA

               FIMSE

               //CONVERTER SOMENTE SE A ENTRADA FOR VÁLIDA

               SE VALIDO = VERDADEIRO ENTAO

                  CODIGO_CLIENTE_BUSCA <- CARACPNUM(ENTRADA)

                  SE (CODIGO_CLIENTE_BUSCA < 1) OU (CODIGO_CLIENTE_BUSCA > 999) ENTAO

                     VALIDO <- FALSO

                  FIMSE

               FIMSE

               //EXIBIR ERRO

               SE VALIDO = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

                  ESCREVAL()

               FIMSE

            FIMENQUANTO
            
            //BUSCAR CLIENTE

            ENCONTRADO_CLIENTE <- FALSO
            CONTADOR <- 1

            ENQUANTO (CONTADOR <= INDICE_CLIENTE -1) E (ENCONTRADO_CLIENTE = FALSO) FACA

               SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_BUSCA ENTAO

                  ENCONTRADO_CLIENTE <- VERDADEIRO
                  INDICE_CLIENTE_BUSCA <- CONTADOR

               FIMSE
               
               CONTADOR <- CONTADOR + 1
               
            FIMENQUANTO
            
            //CLIENTE NÃO ENCONTRADO

            SE ENCONTRADO_CLIENTE = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Cliente não encontrado!")
               ESCREVAL("Venda cancelada.")

            SENAO
            
               //CLIENTE ENCONTRADO

               ESCREVAL()

               ESCREVAL("Cliente encontrado!")

               ESCREVAL()

               ESCREVAL("Nome: ",NOME_CLIENTE[INDICE_CLIENTE_BUSCA])
               ESCREVAL("Código: ",COD_CLIENTE[INDICE_CLIENTE_BUSCA])
               
               ESCREVAL()
               
               //VERIFICAR SE EXISTE PRODUTO CADASTRADO
               
               SE INDICE = 1 ENTAO
               
                  ESCREVAL("ERRO: Nenhum produto cadastrado!")
                  ESCREVAL("Venda cancelada.")
                  
               SENAO

                  //VALIDAR CÓDIGO DO PRODUTO

                  VALIDO <- FALSO

                  ENQUANTO VALIDO = FALSO FACA

                     ESCREVA("Digite o código do produto: ")
                     LEIA(ENTRADA)

                     VALIDO <- VERDADEIRO

                     //VERIFICAR QUANTIDADE DE CARACTERES

                     SE (COMPR(ENTRADA) < 1) OU (COMPR(ENTRADA) > 3) ENTAO

                        VALIDO <- FALSO

                     SENAO

                        //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS

                        PARA I DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                           SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMPARA

                     FIMSE

                     //CONVERTER SOMENTE SE A ENTRADA FOR VÁLIDA

                     SE VALIDO = VERDADEIRO ENTAO

                        CODIGO_BUSCA <- CARACPNUM(ENTRADA)

                        SE (CODIGO_BUSCA < 1) OU (CODIGO_BUSCA > 999) ENTAO

                           VALIDO <- FALSO

                        FIMSE

                     FIMSE

                     //EXIBIR ERRO

                     SE VALIDO = FALSO ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Código inválido! Digite um valor de 1 a 999.")

                        ESCREVAL()

                     FIMSE

                  FIMENQUANTO
                  
                  //BUSCAR PRODUTO

                  ENCONTRADO <- FALSO
                  CONTADOR <- 1

                  ENQUANTO (CONTADOR <= INDICE - 1) E (ENCONTRADO = FALSO) FACA

                     SE COD[CONTADOR] = CODIGO_BUSCA ENTAO

                        ENCONTRADO <- VERDADEIRO
                        INDICE_PRODUTO_BUSCA <- CONTADOR

                     FIMSE

                     CONTADOR <- CONTADOR + 1
                     
                  FIMENQUANTO
                  
                  //PRODUTO NÃO ENCONTRADO
         
                  SE ENCONTRADO = FALSO ENTAO

                     ESCREVAL()

                     ESCREVAL("ERRO: Produto não encontrado!")
                     ESCREVAL("Venda cancelada.")

                  SENAO
                  
                     //PRODUTO ENCONTRADO

                     ESCREVAL()

                     ESCREVAL("Produto encontrado!")

                     ESCREVAL()

                     ESCREVAL("Nome: ",NOME[INDICE_PRODUTO_BUSCA])
                     ESCREVAL("Código: ",COD[INDICE_PRODUTO_BUSCA])
                     ESCREVAL("Preço: R$",PRECO[INDICE_PRODUTO_BUSCA])
                     ESCREVAL("Estoque: ",ESTOQUE[INDICE_PRODUTO_BUSCA])

                     ESCREVAL()
               
                     //VERIFICAR ESTOQUE
               
                     SE ESTOQUE[INDICE_PRODUTO_BUSCA] = 0 ENTAO

                        ESCREVAL("ERRO: Produto sem estoque!")
                        ESCREVAL("Venda cancelada.")

                     SENAO

                        //DIGITAR QUANTIDADE

                        VALIDO <- FALSO

                        ENQUANTO VALIDO = FALSO FACA

                           ESCREVA("Digite a quantidade desejada: ")
                           LEIA(ENTRADA)

                           VALIDO <- VERDADEIRO

                           //VERIFICAR SE A ENTRADA NÃO ESTÁ VAZIA

                           SE (COMPR(ENTRADA) < 1) ENTAO

                              VALIDO <- FALSO

                           SENAO

                              //VERIFICAR SE TODOS OS CARACTERES SÃO NÚMEROS

                              PARA I DE 1 ATE COMPR(ENTRADA) FACA

                                 CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                                 SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                                    VALIDO <- FALSO

                                 FIMSE

                              FIMPARA

                           FIMSE

                           //CONVERTER SOMENTE SE A ENTRADA FOR VÁLIDA

                           SE VALIDO = VERDADEIRO ENTAO

                              QUANTIDADE_NOVA <- CARACPNUM(ENTRADA)

                              SE QUANTIDADE_NOVA <= 0 ENTAO

                                 VALIDO <- FALSO

                                 ESCREVAL()

                                 ESCREVAL("ERRO: Quantidade inválida!")
                                 ESCREVAL("Digite um valor maior que zero.")

                              SENAO

                                 SE QUANTIDADE_NOVA > ESTOQUE[INDICE_PRODUTO_BUSCA] ENTAO

                                    VALIDO <- FALSO

                                    ESCREVAL()

                                    ESCREVAL("ERRO: Estoque insuficiente!")
                                    ESCREVAL("Estoque disponível: ",ESTOQUE[INDICE_PRODUTO_BUSCA])

                                 FIMSE

                              FIMSE

                           FIMSE

                           //EXIBIR ERRO PARA ENTRADAS NÃO NUMÉRICAS OU VAZIAS

                           SE VALIDO = FALSO ENTAO

                              SE (COMPR(ENTRADA) < 1) ENTAO

                                 ESCREVAL()

                                 ESCREVAL("ERRO: Quantidade inválida!")
                                 ESCREVAL("Digite um número inteiro maior que zero.")

                              SENAO

                                 PARA I DE 1 ATE COMPR(ENTRADA) FACA

                                    CARACTE_ATUAL <- COPIA(ENTRADA, I, 1)

                                    SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                                       ESCREVAL()

                                       ESCREVAL("ERRO: Quantidade inválida!")
                                       ESCREVAL("Digite somente números inteiros positivos.")

                                       I <- COMPR(ENTRADA)

                                    FIMSE

                                 FIMPARA

                              FIMSE

                              ESCREVAL()

                           FIMSE

                        FIMENQUANTO

                        //CALCULAR TOTAL

                        TOTAL_NOVO <- QUANTIDADE_NOVA * PRECO[INDICE_PRODUTO_BUSCA]

                        ESCREVAL()

                        ESCREVAL("==================================")
                        ESCREVAL("          RESUMO DA VENDA         ")
                        ESCREVAL("==================================")

                        ESCREVAL()

                        ESCREVAL("Cliente: ",NOME_CLIENTE[INDICE_CLIENTE_BUSCA])
                        ESCREVAL("Código do cliente: ",COD_CLIENTE[INDICE_CLIENTE_BUSCA])

                        ESCREVAL()

                        ESCREVAL("Produto: ",NOME[INDICE_PRODUTO_BUSCA])
                        ESCREVAL("Código do produto: ",COD[INDICE_PRODUTO_BUSCA])
                        ESCREVAL("Preço unitário: R$",PRECO[INDICE_PRODUTO_BUSCA])
                        ESCREVAL("Quantidade: ",QUANTIDADE_NOVA)

                        ESCREVAL()

                        ESCREVAL("TOTAL DA VENDA: R$", TOTAL_NOVO)

                        ESCREVAL()

                        //CONFIRMAR VENDA

                        CONFIRMACAO <- ""

                        ENQUANTO (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") FACA

                           ESCREVA("Confirmar venda? (S/N): ")
                           LEIA(CONFIRMACAO)

                           SE (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") ENTAO

                              ESCREVAL()

                              ESCREVAL("ERRO: Opção inválida! Digite S para confirmar ou N para cancelar.")

                              ESCREVAL()

                           FIMSE

                        FIMENQUANTO

                        SE (CONFIRMACAO = "S") OU (CONFIRMACAO = "s") ENTAO

                           //REGISTRAR VENDA

                           COD_VENDA[INDICE_VENDA] <- INDICE_VENDA
                           COD_CLIENTE_VENDA[INDICE_VENDA] <- COD_CLIENTE[INDICE_CLIENTE_BUSCA]
                           COD_PRODUTO_VENDA[INDICE_VENDA] <- COD[INDICE_PRODUTO_BUSCA]
                           QUANTIDADE_VENDA[INDICE_VENDA] <- QUANTIDADE_NOVA
                           PRECO_UNITARIO[INDICE_VENDA] <- PRECO[INDICE_PRODUTO_BUSCA]
                           TOTAL_VENDA[INDICE_VENDA] <- TOTAL_NOVO

                           //DIMINUIR ESTOQUE

                           ESTOQUE[INDICE_PRODUTO_BUSCA] <- ESTOQUE[INDICE_PRODUTO_BUSCA] - QUANTIDADE_NOVA

                           //AVANÇAR PARA A PRÓXIMA VENDA

                           INDICE_VENDA <- INDICE_VENDA + 1

                           ESCREVAL()

                           ESCREVAL("Venda realizada com sucesso!")

                           ESCREVAL()

                           ESCREVAL("Código da venda: ",COD_VENDA[INDICE_VENDA - 1])
                           ESCREVAL("Total pago: R$",TOTAL_VENDA[INDICE_VENDA - 1])
                           ESCREVAL("Estoque restante: ",ESTOQUE[INDICE_PRODUTO_BUSCA])

                        SENAO

                           ESCREVAL()

                           ESCREVAL("Venda cancelada.")

                        FIMSE

                     FIMSE

                  FIMSE

               FIMSE

            FIMSE

         FIMSE
         
         FIMSE
      
      FIMSE
   
      //====================================================================
      // OPÇÃO 14 - LISTAR VENDAS
      //====================================================================

      SE INFORMACAO = 14 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("           LISTAR VENDAS          ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM VENDAS

         SE INDICE_VENDA = 1 ENTAO

            ESCREVAL("Nenhuma venda registrada!")

         SENAO

            PARA CONTADOR DE 1 ATE INDICE_VENDA - 1 FACA

               ESCREVAL("==================================")
               ESCREVAL("Venda ",COD_VENDA[CONTADOR])
               ESCREVAL("==================================")

               ESCREVAL()

               //DADOS DA VENDA
               
               ESCREVAL("----------- VENDA -----------")

               ESCREVAL("Código da venda: ",COD_VENDA[CONTADOR])
               ESCREVAL("Quantidade: ",QUANTIDADE_VENDA[CONTADOR])
               ESCREVAL("Preço unitário: R$",PRECO_UNITARIO[CONTADOR])
               ESCREVAL("Total da venda: R$",TOTAL_VENDA[CONTADOR])

               ESCREVAL()

               //BUSCAR CLIENTE DA VENDA

               ESCREVAL("----------- CLIENTE -----------")

               PARA AUXILIAR DE 1 ATE INDICE_CLIENTE - 1 FACA

                  SE COD_CLIENTE[AUXILIAR] = COD_CLIENTE_VENDA[CONTADOR] ENTAO

                     ESCREVAL("Código: ",COD_CLIENTE[AUXILIAR])
                     ESCREVAL("Nome: ",NOME_CLIENTE[AUXILIAR])

                  FIMSE

               FIMPARA

               ESCREVAL()

               //BUSCAR PRODUTO DA VENDA

               ESCREVAL("----------- PRODUTO -----------")

               PARA AUXILIAR DE 1 ATE INDICE - 1 FACA

                  SE COD[AUXILIAR] = COD_PRODUTO_VENDA[CONTADOR] ENTAO

                     ESCREVAL("Código: ",COD[AUXILIAR])
                     ESCREVAL("Nome: ",NOME[AUXILIAR])

                  FIMSE

               FIMPARA

               ESCREVAL()
               
               ESCREVAL("-------------------------------")
               
               ESCREVAL()

            FIMPARA

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 15 - BUSCAR VENDA
      //====================================================================

      SE INFORMACAO = 15 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("           BUSCAR VENDA           ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM VENDAS

         SE INDICE_VENDA = 1 ENTAO

            ESCREVAL("ERRO: Nenhuma venda registrada!")

         SENAO

            //VALIDAR CÓDIGO

            ESCREVA("Digite o código da venda: ")
            LEIA(ENTRADA)

            VALIDO <- FALSO

            ENQUANTO VALIDO = FALSO FACA

               SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

                  VALIDO <- VERDADEIRO

                  PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA,AUXILIAR,1)

                     SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMPARA

                  SE VALIDO = VERDADEIRO ENTAO

                     CODIGO_VENDA_BUSCA <- CARACPNUM(ENTRADA)

                     SE CODIGO_VENDA_BUSCA = 0 ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMSE

               FIMSE

               SE VALIDO = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Digite um código numérico de 1 a 999!")

                  ESCREVAL()

                  ESCREVA("Digite o código da venda novamente: ")
                  LEIA(ENTRADA)

               FIMSE

            FIMENQUANTO

            //BUSCAR VENDA

            ENCONTRADO_VENDA <- FALSO
            CONTADOR <- 1
            
            ENQUANTO (CONTADOR <= INDICE_VENDA - 1) E (ENCONTRADO_VENDA = FALSO) FACA

               SE COD_VENDA[CONTADOR] = CODIGO_VENDA_BUSCA ENTAO

                  ENCONTRADO_VENDA <- VERDADEIRO

                  ESCREVAL()

                  ESCREVAL("==================================")
                  ESCREVAL("Venda ",COD_VENDA[CONTADOR])
                  ESCREVAL("==================================")

                  ESCREVAL()

                  //DADOS DA VENDA
                  
                  ESCREVAL("----------- VENDA -----------")

                  ESCREVAL("Código da venda: ",COD_VENDA[CONTADOR])
                  ESCREVAL("Quantidade: ",QUANTIDADE_VENDA[CONTADOR])
                  ESCREVAL("Preço unitário: R$",PRECO_UNITARIO[CONTADOR])
                  ESCREVAL("Total da venda: R$",TOTAL_VENDA[CONTADOR])

                  ESCREVAL()

                  //BUSCAR CLIENTE DA VENDA

                  ESCREVAL("----------- CLIENTE -----------")

                  PARA AUXILIAR DE 1 ATE INDICE_CLIENTE - 1 FACA

                     SE COD_CLIENTE[AUXILIAR] = COD_CLIENTE_VENDA[CONTADOR] ENTAO

                        ESCREVAL("Código: ",COD_CLIENTE[AUXILIAR])
                        ESCREVAL("Nome: ",NOME_CLIENTE[AUXILIAR])

                     FIMSE

                  FIMPARA

                  ESCREVAL()

                  //BUSCAR PRODUTO DA VENDA

                  ESCREVAL("----------- PRODUTO -----------")

                  PARA AUXILIAR DE 1 ATE INDICE - 1 FACA

                     SE COD[AUXILIAR] = COD_PRODUTO_VENDA[CONTADOR] ENTAO

                        ESCREVAL("Código: ",COD[AUXILIAR])
                        ESCREVAL("Nome: ",NOME[AUXILIAR])

                     FIMSE

                  FIMPARA

                  ESCREVAL()
                  
                  ESCREVAL("-------------------------------")

               FIMSE

               CONTADOR <- CONTADOR + 1
               
            FIMENQUANTO

            //VENDA NÃO ENCONTRADA

            SE ENCONTRADO_VENDA = FALSO ENTAO
            
               ESCREVAL()

               ESCREVAL("ERRO: Venda não encontrada!")

            FIMSE

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 16 - TOTAL DE VENDAS
      //====================================================================

      SE INFORMACAO = 16 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("         TOTAL DE VENDAS          ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM VENDAS

         SE INDICE_VENDA = 1 ENTAO

            ESCREVAL("ERRO: Nenhuma venda registrada!")

         SENAO

            TOTAL_VENDAS <- 0

            //CALCULAR TOTAL DAS VENDAS

            PARA CONTADOR DE 1 ATE INDICE_VENDA - 1 FACA

               TOTAL_VENDAS <- TOTAL_VENDAS + TOTAL_VENDA[CONTADOR]

            FIMPARA

            ESCREVAL("----------------------------------")
            ESCREVAL("Total de vendas: R$",TOTAL_VENDAS)
            ESCREVAL("----------------------------------")

         FIMSE

      FIMSE

      //====================================================================
      // OPÇÃO 17 - RELATÓRIO DE ESTOQUE
      //====================================================================

      SE INFORMACAO = 17 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("        RELATÓRIO DE ESTOQUE      ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM PRODUTOS

         SE INDICE = 1 ENTAO

            ESCREVAL("ERRO: Nenhum produto cadastrado!")

         SENAO

            VALOR_TOTAL_ESTOQUE <- 0

            //LISTAR PRODUTOS E CALCULAR VALOR DO ESTOQUE

            PARA CONTADOR DE 1 ATE INDICE - 1 FACA

               ESCREVAL("==================================")
               ESCREVAL("Produto ",COD[CONTADOR])
               ESCREVAL("==================================")

               ESCREVAL()

               //DADOS DO PRODUTO

               ESCREVAL("Código: ",COD[CONTADOR])
               ESCREVAL("Nome: ",NOME[CONTADOR])
               ESCREVAL("Preço: R$",PRECO[CONTADOR])
               ESCREVAL("Estoque: ",ESTOQUE[CONTADOR])

               ESCREVAL()

               //CALCULAR VALOR DO ESTOQUE DO PRODUTO

               ESCREVAL("Valor em estoque: R$",ESTOQUE[CONTADOR] * PRECO[CONTADOR])

               //ACUMULAR VALOR TOTAL DO ESTOQUE

               VALOR_TOTAL_ESTOQUE <- VALOR_TOTAL_ESTOQUE + (ESTOQUE[CONTADOR] * PRECO[CONTADOR])

               ESCREVAL()
               
               ESCREVAL("----------------------------------")
               
               ESCREVAL()

            FIMPARA

            ESCREVAL("==================================")
            ESCREVAL("VALOR TOTAL DO ESTOQUE: R$",VALOR_TOTAL_ESTOQUE)
            ESCREVAL("==================================")

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 18 - PRODUTO MAIS VENDIDO
      //====================================================================

      SE INFORMACAO = 18 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("         PRODUTO MAIS VENDIDO     ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM PRODUTOS

         SE INDICE = 1 ENTAO

            ESCREVAL("ERRO: Nenhum produto cadastrado!")

         SENAO

            //VERIFICAR SE EXISTEM VENDAS

            SE INDICE_VENDA = 1 ENTAO

               ESCREVAL("ERRO: Nenhuma venda registrada!")

            SENAO

               MAIOR_QUANTIDADE_VENDIDA <- 0
               CODIGO_PRODUTO_MAIS_VENDIDO <- 0

               //PERCORRER TODOS OS PRODUTOS

               PARA CONTADOR DE 1 ATE INDICE - 1 FACA

                  QUANTIDADE_TOTAL_PRODUTO <- 0

                  //SOMAR TODAS AS VENDAS DO PRODUTO

                  PARA AUXILIAR DE 1 ATE INDICE_VENDA - 1 FACA

                     SE COD_PRODUTO_VENDA[AUXILIAR] = COD[CONTADOR] ENTAO

                        QUANTIDADE_TOTAL_PRODUTO <- QUANTIDADE_TOTAL_PRODUTO + QUANTIDADE_VENDA[AUXILIAR]

                     FIMSE

                  FIMPARA

                  //VERIFICAR SE É O PRODUTO MAIS VENDIDO

                  SE QUANTIDADE_TOTAL_PRODUTO > MAIOR_QUANTIDADE_VENDIDA ENTAO

                     MAIOR_QUANTIDADE_VENDIDA <- QUANTIDADE_TOTAL_PRODUTO
                     CODIGO_PRODUTO_MAIS_VENDIDO <- COD[CONTADOR]

                  FIMSE

               FIMPARA

               //BUSCAR DADOS DO PRODUTO MAIS VENDIDO

               PARA CONTADOR DE 1 ATE INDICE - 1 FACA

                  SE COD[CONTADOR] = CODIGO_PRODUTO_MAIS_VENDIDO ENTAO

                     ESCREVAL("----------------------------------")
                     ESCREVAL("             RESULTADO            ")
                     ESCREVAL("----------------------------------")

                     ESCREVAL()

                     ESCREVAL("Código: ",COD[CONTADOR])
                     ESCREVAL("Nome: ",NOME[CONTADOR])
                     ESCREVAL("Quantidade vendida: ",MAIOR_QUANTIDADE_VENDIDA)
                     ESCREVAL("Preço atual: R$",PRECO[CONTADOR])
                     
                     ESCREVAL()

                  FIMSE

               FIMPARA

            FIMSE

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 19 - CLIENTE QUE MAIS COMPROU
      //====================================================================

      SE INFORMACAO = 19 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("       CLIENTE QUE MAIS COMPROU   ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM CLIENTES

         SE INDICE_CLIENTE = 1 ENTAO

            ESCREVAL("ERRO: Nenhum cliente cadastrado!")

         SENAO

            //VERIFICAR SE EXISTEM VENDAS

            SE INDICE_VENDA = 1 ENTAO

               ESCREVAL("ERRO: Nenhuma venda registrada!")

            SENAO

               MAIOR_QUANTIDADE_COMPRADA <- 0
               CODIGO_CLIENTE_MAIS_COMPROU <- 0

               //PERCORRER TODOS OS CLIENTES

               PARA CONTADOR DE 1 ATE INDICE_CLIENTE - 1 FACA

                  QUANTIDADE_TOTAL_CLIENTE <- 0

                  //SOMAR TODAS AS VENDAS DO CLIENTE

                  PARA AUXILIAR DE 1 ATE INDICE_VENDA - 1 FACA

                     SE COD_CLIENTE_VENDA[AUXILIAR] = COD_CLIENTE[CONTADOR] ENTAO

                        QUANTIDADE_TOTAL_CLIENTE <- QUANTIDADE_TOTAL_CLIENTE + QUANTIDADE_VENDA[AUXILIAR]

                     FIMSE

                  FIMPARA

                  //VERIFICAR SE É O CLIENTE QUE MAIS COMPROU

                  SE QUANTIDADE_TOTAL_CLIENTE > MAIOR_QUANTIDADE_COMPRADA ENTAO

                     MAIOR_QUANTIDADE_COMPRADA <- QUANTIDADE_TOTAL_CLIENTE
                     CODIGO_CLIENTE_MAIS_COMPROU <- COD_CLIENTE[CONTADOR]

                  FIMSE

               FIMPARA
               
               //VERIFICAR SE ALGUM CLIENTE POSSUI COMPRAS
               
               SE CODIGO_CLIENTE_MAIS_COMPROU = 0 ENTAO

                  ESCREVAL("ERRO: Nenhum cliente realizou compras!")

               SENAO

                  //BUSCAR DADOS DO CLIENTE

                  PARA CONTADOR DE 1 ATE INDICE_CLIENTE - 1 FACA

                     SE COD_CLIENTE[CONTADOR] = CODIGO_CLIENTE_MAIS_COMPROU ENTAO

                        ESCREVAL("----------------------------------")
                        ESCREVAL("             RESULTADO            ")
                        ESCREVAL("----------------------------------")

                        ESCREVAL()

                        ESCREVAL("Código: ",COD_CLIENTE[CONTADOR])
                        ESCREVAL("Nome: ",NOME_CLIENTE[CONTADOR])
                        ESCREVAL("Quantidade comprada: ",MAIOR_QUANTIDADE_COMPRADA)

                        ESCREVAL()

                     FIMSE

                  FIMPARA

               FIMSE

            FIMSE

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 20 - CANCELAR VENDA
      //====================================================================

      SE INFORMACAO = 20 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          CANCELAR VENDA          ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM VENDAS

         SE INDICE_VENDA = 1 ENTAO

            ESCREVAL("ERRO: Nenhuma venda registrada!")

         SENAO
         
            //VALIDAR CÓDIGO
            
            ESCREVA("Digite o código da venda: ")
            LEIA(ENTRADA)

            VALIDO <- FALSO

            ENQUANTO VALIDO = FALSO FACA

               SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

                  VALIDO <- VERDADEIRO

                  PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA,AUXILIAR,1)

                     SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMPARA

                  SE VALIDO = VERDADEIRO ENTAO

                     CODIGO_VENDA_BUSCA <- CARACPNUM(ENTRADA)

                     SE CODIGO_VENDA_BUSCA = 0 ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMSE

               FIMSE

               SE VALIDO = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Digite um código numérico de 1 a 999!")

                  ESCREVAL()

                  ESCREVA("Digite o código da venda novamente: ")
                  LEIA(ENTRADA)

               FIMSE

            FIMENQUANTO

            //BUSCAR VENDA

            ENCONTRADO_VENDA <- FALSO
            POSICAO_VENDA <- 0
            AUXILIAR <- 1
            
            ENQUANTO (AUXILIAR <= INDICE_VENDA - 1) E (ENCONTRADO_VENDA = FALSO) FACA

               SE COD_VENDA[AUXILIAR] = CODIGO_VENDA_BUSCA ENTAO

                  ENCONTRADO_VENDA <- VERDADEIRO
                  POSICAO_VENDA <- AUXILIAR

               FIMSE
               
               AUXILIAR <- AUXILIAR + 1

            FIMENQUANTO

            //VENDA NÃO ENCONTRADA

            SE ENCONTRADO_VENDA = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Venda não encontrada!")

            SENAO

               //MOSTRAR OS DADOS DA VENDA

               ESCREVAL()
               
               ESCREVAL("==================================")
               ESCREVAL("          DADOS DA VENDA          ")
               ESCREVAL("==================================")

               ESCREVAL()

               ESCREVAL("Código da venda: ",COD_VENDA[POSICAO_VENDA])
               ESCREVAL("Código do cliente: ",COD_CLIENTE_VENDA[POSICAO_VENDA])
               ESCREVAL("Código do produto: ",COD_PRODUTO_VENDA[POSICAO_VENDA])
               ESCREVAL("Quantidade: ",QUANTIDADE_VENDA[POSICAO_VENDA])
               ESCREVAL("Preço unitário: R$ ",PRECO_UNITARIO[POSICAO_VENDA])
               ESCREVAL("Total da venda: R$ ",TOTAL_VENDA[POSICAO_VENDA])

               ESCREVAL()

               //CONFIRMAR CANCELAMENTO
               
               CONFIRMACAO <- ""
               
               ENQUANTO (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") FACA

                  ESCREVA("Deseja realmente cancelar esta venda? (S/N): ")
                  LEIA(CONFIRMACAO)

                  SE (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") ENTAO

                     ESCREVAL()
                     
                     ESCREVAL("ERRO: Opção inválida! Digite S para confirmar ou N para cancelar.")
                     
                     ESCREVAL()
                     
                  FIMSE
                  
               FIMENQUANTO

               //CANCELAR SE CONFIRMADO
               
               SE (CONFIRMACAO = "S") OU (CONFIRMACAO = "s") ENTAO

                  //DEVOLVER QUANTIDADE AO ESTOQUE

                  PARA CONTADOR DE 1 ATE INDICE - 1 FACA

                     SE COD[CONTADOR] = COD_PRODUTO_VENDA[POSICAO_VENDA] ENTAO

                        ESTOQUE[CONTADOR] <- ESTOQUE[CONTADOR] + QUANTIDADE_VENDA[POSICAO_VENDA]

                     FIMSE

                  FIMPARA

                  //DESLOCAR AS VENDAS UMA POSIÇÃO PARA TRÁS

                  PARA CONTADOR DE POSICAO_VENDA ATE INDICE_VENDA - 2 FACA

                     COD_VENDA[CONTADOR] <- COD_VENDA[CONTADOR + 1]
                     COD_CLIENTE_VENDA[CONTADOR] <- COD_CLIENTE_VENDA[CONTADOR + 1]
                     COD_PRODUTO_VENDA[CONTADOR] <- COD_PRODUTO_VENDA[CONTADOR + 1]
                     QUANTIDADE_VENDA[CONTADOR] <- QUANTIDADE_VENDA[CONTADOR + 1]
                     PRECO_UNITARIO[CONTADOR] <- PRECO_UNITARIO[CONTADOR + 1]
                     TOTAL_VENDA[CONTADOR] <- TOTAL_VENDA[CONTADOR + 1]

                  FIMPARA

                  //DIMINUIR O ÍNDICE DE VENDAS

                  INDICE_VENDA <- INDICE_VENDA - 1

                  ESCREVAL()
                  
                  ESCREVAL("Venda cancelada com sucesso!")
                  ESCREVAL("Quantidade devolvida ao estoque.")

               SENAO

                  ESCREVAL()
                  
                  ESCREVAL("Cancelamento não realizado!")

               FIMSE

            FIMSE

         FIMSE

      FIMSE
      
      //====================================================================
      // OPÇÃO 21 - ALTERAR VENDA
      //====================================================================

      SE INFORMACAO = 21 ENTAO

         LIMPATELA()

         ESCREVAL("==================================")
         ESCREVAL("          ALTERAR VENDA           ")
         ESCREVAL("==================================")

         ESCREVAL()

         //VERIFICAR SE EXISTEM VENDAS

         SE INDICE_VENDA = 1 ENTAO

            ESCREVAL("ERRO: Nenhuma venda registrada!")

         SENAO

            //VALIDAR CÓDIGO DA VENDA

            ESCREVA("Digite o código da venda: ")
            LEIA(ENTRADA)

            VALIDO <- FALSO

            ENQUANTO VALIDO = FALSO FACA

               SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

                  VALIDO <- VERDADEIRO

                  PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                     CARACTE_ATUAL <- COPIA(ENTRADA,AUXILIAR,1)

                     SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMPARA

                  SE VALIDO = VERDADEIRO ENTAO

                     CODIGO_VENDA_BUSCA <- CARACPNUM(ENTRADA)

                     SE CODIGO_VENDA_BUSCA = 0 ENTAO

                        VALIDO <- FALSO

                     FIMSE

                  FIMSE

               FIMSE

               SE VALIDO = FALSO ENTAO

                  ESCREVAL()

                  ESCREVAL("ERRO: Digite um código numérico de 1 a 999!")

                  ESCREVAL()

                  ESCREVA("Digite o código da venda novamente: ")
                  LEIA(ENTRADA)

               FIMSE

            FIMENQUANTO
            
            //BUSCAR VENDA

            ENCONTRADO_VENDA <- FALSO
            POSICAO_VENDA <- 0
            CONTADOR <- 1

            ENQUANTO (CONTADOR <= INDICE_VENDA - 1) E (ENCONTRADO_VENDA = FALSO) FACA

               SE COD_VENDA[CONTADOR] = CODIGO_VENDA_BUSCA ENTAO

                  ENCONTRADO_VENDA <- VERDADEIRO
                  POSICAO_VENDA <- CONTADOR

               FIMSE
               
               CONTADOR <- CONTADOR + 1

            FIMENQUANTO

            //VENDA NÃO ENCONTRADA

            SE ENCONTRADO_VENDA = FALSO ENTAO

               ESCREVAL()
               
               ESCREVAL("ERRO: Venda não encontrada!")

            SENAO

               //MOSTRAR OS DADOS ATUAIS DA VENDA

               ESCREVAL()
               
               ESCREVAL("==================================")
               ESCREVAL("       DADOS ATUAIS DA VENDA      ")
               ESCREVAL("==================================")

               ESCREVAL()

               ESCREVAL("Código da venda: ",COD_VENDA[POSICAO_VENDA])
               ESCREVAL("Código do cliente: ",COD_CLIENTE_VENDA[POSICAO_VENDA])
               ESCREVAL("Código do produto: ",COD_PRODUTO_VENDA[POSICAO_VENDA])
               ESCREVAL("Quantidade: ",QUANTIDADE_VENDA[POSICAO_VENDA])
               ESCREVAL("Preço unitário: R$ ",PRECO_UNITARIO[POSICAO_VENDA])
               ESCREVAL("Total da venda: R$ ",TOTAL_VENDA[POSICAO_VENDA])

               ESCREVAL()
               
               //VERIFICAR SE EXISTEM PRODUTOS
               
               SE INDICE = 1 ENTAO
               
                  ESCREVAL("ERRO: Nenhum produto encontrado!")
                  
               SENAO
               
                  //INFORMAR NOVO PRODUTO

                  ESCREVA("Digite o código do novo produto: ")
                  LEIA(ENTRADA)

                  VALIDO <- FALSO

                  ENQUANTO VALIDO = FALSO FACA

                     SE (COMPR(ENTRADA) >= 1) E (COMPR(ENTRADA) <= 3) ENTAO

                        VALIDO <- VERDADEIRO

                        PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                           CARACTE_ATUAL <- COPIA(ENTRADA,AUXILIAR,1)

                           SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMPARA

                        SE VALIDO = VERDADEIRO ENTAO

                           CODIGO_NOVO_PRODUTO <- CARACPNUM(ENTRADA)

                           SE CODIGO_NOVO_PRODUTO = 0 ENTAO

                              VALIDO <- FALSO

                           FIMSE

                        FIMSE

                     FIMSE

                     SE VALIDO = FALSO ENTAO

                        ESCREVAL()

                        ESCREVAL("ERRO: Digite um código numérico de 1 a 999!")

                        ESCREVAL()

                        ESCREVA("Digite o código do produto novamente: ")
                        LEIA(ENTRADA)

                     FIMSE

                  FIMENQUANTO
                  
                  //BUSCAR NOVO PRODUTO

                  PRODUTO_ENCONTRADO <- FALSO
                  POSICAO_NOVO_PRODUTO <- 0
                  CONTADOR <- 1

                  ENQUANTO (CONTADOR <= INDICE - 1) E (PRODUTO_ENCONTRADO = FALSO) FACA

                     SE COD[CONTADOR] = CODIGO_NOVO_PRODUTO ENTAO

                        PRODUTO_ENCONTRADO <- VERDADEIRO
                        POSICAO_NOVO_PRODUTO <- CONTADOR

                     FIMSE
                     
                     CONTADOR <- CONTADOR + 1

                  FIMENQUANTO

                  //PRODUTO NÃO ENCONTRADO

                  SE PRODUTO_ENCONTRADO = FALSO ENTAO

                     ESCREVAL()
                  
                     ESCREVAL("ERRO: Produto não encontrado!")

                  SENAO
                  
                     //MOSTRAR DADOS DO NOVO PRODUTO
                     
                     ESCREVAL()
                     
                     ESCREVAL("==================================")
                     ESCREVAL("            NOVO PRODUTO          ")
                     ESCREVAL("==================================")

                     ESCREVAL()

                     ESCREVAL("Código: ",COD[POSICAO_NOVO_PRODUTO])
                     ESCREVAL("Nome: ",NOME[POSICAO_NOVO_PRODUTO])
                     ESCREVAL("Preço: R$",PRECO[POSICAO_NOVO_PRODUTO])
                     ESCREVAL("Estoque atual: ",ESTOQUE[POSICAO_NOVO_PRODUTO])

                     ESCREVAL()

                     //INFORMAR NOVA QUANTIDADE

                     ESCREVA("Digite a nova quantidade: ")
                     LEIA(ENTRADA)

                     VALIDO <- FALSO

                     ENQUANTO VALIDO = FALSO FACA

                        SE COMPR(ENTRADA) >= 1 ENTAO

                           VALIDO <- VERDADEIRO

                           PARA AUXILIAR DE 1 ATE COMPR(ENTRADA) FACA

                              CARACTE_ATUAL <- COPIA(ENTRADA,AUXILIAR,1)

                              SE (CARACTE_ATUAL < "0") OU (CARACTE_ATUAL > "9") ENTAO

                                 VALIDO <- FALSO

                              FIMSE

                           FIMPARA

                           SE VALIDO = VERDADEIRO ENTAO

                              NOVA_QUANTIDADE <- CARACPNUM(ENTRADA)

                              SE NOVA_QUANTIDADE <= 0 ENTAO

                                 VALIDO <- FALSO

                              FIMSE

                           FIMSE

                        FIMSE

                        SE VALIDO = FALSO ENTAO

                           ESCREVAL()

                           ESCREVAL("ERRO: Digite uma quantidade inteira maior que zero!")

                           ESCREVAL()

                           ESCREVA("Digite a nova quantidade novamente: ")
                           LEIA(ENTRADA)

                        FIMSE

                     FIMENQUANTO
                     
                     //VERIFICAR SE OS DADOS SÃO IGUAIS AOS ATUAIS
                     
                     SE (CODIGO_NOVO_PRODUTO = COD_PRODUTO_VENDA[POSICAO_VENDA]) E (NOVA_QUANTIDADE = QUANTIDADE_VENDA[POSICAO_VENDA]) ENTAO
                        
                        ESCREVAL()
                        
                        ESCREVAL("ERRO: Os dados informados são iguais aos dados atuais da venda!")
                        
                     SENAO
                     
                        //CALCULAR ESTOQUE DISPONÍVEL
                     
                        ESTOQUE_DISPONIVEL <- ESTOQUE[POSICAO_NOVO_PRODUTO]
                     
                        //SE FOR O MESMO PRODUTO, CONSIDERAR A DEVOLUÇÃO
                        //TEMPORÁRIA DA QUANTIDADE ATUAL
                     
                        SE CODIGO_NOVO_PRODUTO = COD_PRODUTO_VENDA[POSICAO_VENDA] ENTAO
                     
                           ESTOQUE_DISPONIVEL <- ESTOQUE_DISPONIVEL + QUANTIDADE_VENDA[POSICAO_VENDA]
                        
                        FIMSE
                     
                        //VERIFICAR ESTOQUE
                     
                        SE NOVA_QUANTIDADE > ESTOQUE_DISPONIVEL ENTAO
                     
                           ESCREVAL()
                        
                           ESCREVAL("ERRO: Estoque insuficiente!")
                           ESCREVAL("Estoque disponível: ",ESTOQUE_DISPONIVEL)
                           ESCREVAL("Quantidade solicitada: ",NOVA_QUANTIDADE)
                        
                        SENAO
                     
                           //CALCULAR NOVO TOTAL
                        
                           NOVO_TOTAL <- PRECO[POSICAO_NOVO_PRODUTO] * NOVA_QUANTIDADE
                        
                           //MOSTRAR NOVOS DADOS
                        
                           ESCREVAL()
                        
                           ESCREVAL("==================================")
                           ESCREVAL("            NOVOS DADOS           ")
                           ESCREVAL("==================================")

                           ESCREVAL()

                           ESCREVAL("Código do produto: ",CODIGO_NOVO_PRODUTO)
                           ESCREVAL("Nome do produto: ",NOME[POSICAO_NOVO_PRODUTO])
                           ESCREVAL("Preço unitário: R$",PRECO[POSICAO_NOVO_PRODUTO])
                           ESCREVAL("Nova quantidade: ",NOVA_QUANTIDADE)
                           ESCREVAL("Estoque disponível: ",ESTOQUE_DISPONIVEL)
                           ESCREVAL("Novo total: R$",NOVO_TOTAL)

                           ESCREVAL()
                        
                           //CONFIRMAR ALTERAÇÃO
                        
                           CONFIRMACAO <- ""
                        
                           ENQUANTO (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") FACA

                              ESCREVA("Deseja realmente alterar esta venda? (S/N): ")
                              LEIA(CONFIRMACAO)
                           
                              SE (CONFIRMACAO <> "S") E (CONFIRMACAO <> "s") E (CONFIRMACAO <> "N") E (CONFIRMACAO <> "n") ENTAO
                           
                                 ESCREVAL()
                              
                                 ESCREVAL("ERRO: Opção inválida! Digite S para confirmar ou N para cancelar.")
                              
                                 ESCREVAL()
                              
                              FIMSE
                           
                           FIMENQUANTO
                        
                           //ALTERAR SE CONFIRMADO
                        
                           SE (CONFIRMACAO = "S") OU (CONFIRMACAO = "s") ENTAO
                        
                              //DEVOLVER QUANTIDADE DO PRODUTO ANTIGO
                        
                              CONTADOR <- 1
                           
                              ENQUANTO CONTADOR <= INDICE - 1 FACA
                           
                                 SE COD[CONTADOR] = COD_PRODUTO_VENDA[POSICAO_VENDA] ENTAO

                                    ESTOQUE[CONTADOR] <- ESTOQUE[CONTADOR] + QUANTIDADE_VENDA[POSICAO_VENDA]
                        
                                 FIMSE
                              
                                 CONTADOR <- CONTADOR + 1
                              
                              FIMENQUANTO
                           
                              //RETIRAR NOVA QUANTIDADE DO NOVO PRODUTO

                              ESTOQUE[POSICAO_NOVO_PRODUTO] <- ESTOQUE[POSICAO_NOVO_PRODUTO] - NOVA_QUANTIDADE

                              //ATUALIZAR PRODUTO

                              COD_PRODUTO_VENDA[POSICAO_VENDA] <- CODIGO_NOVO_PRODUTO

                              //ATUALIZAR QUANTIDADE

                              QUANTIDADE_VENDA[POSICAO_VENDA] <- NOVA_QUANTIDADE

                              //ATUALIZAR PREÇO

                              PRECO_UNITARIO[POSICAO_VENDA] <- PRECO[POSICAO_NOVO_PRODUTO]

                              //ATUALIZAR TOTAL

                              TOTAL_VENDA[POSICAO_VENDA] <- NOVO_TOTAL

                              ESCREVAL()
                           
                              ESCREVAL("Venda alterada com sucesso!")

                              ESCREVAL()
                           
                              ESCREVAL("Novo produto: ",NOME[POSICAO_NOVO_PRODUTO])
                              ESCREVAL("Nova quantidade: ",NOVA_QUANTIDADE)
                              ESCREVAL("Novo total: R$",NOVO_TOTAL)
                           
                           SENAO
                        
                              ESCREVAL()
                           
                              ESCREVAL("Alteração não realizada!")

                           FIMSE

                        FIMSE

                     FIMSE

                  FIMSE

               FIMSE

            FIMSE

         FIMSE
         
      FIMSE

   FIMENQUANTO

fimalgoritmo

programa {
  funcao inicio() {
    real valorProduto, maiorValor = 0.0, menorValor = 0.0, somaProdutos = 0.0
    inteiro i, cadastroProduto
    cadeia nomeProduto[50]
    real valoresProdutos[50]
    
    //apresentação do sistema
    escreveLinha(verdadeiro)
    escreva("-------------------CADASTRO DE PRODUTOS DA OFICINA-------------------\n\n")
    escreveLinha(verdadeiro)
    //cadastra a qtd de produtos
    escreva("Qtd de produtos a serem cadastrados? ")
    leia(cadastroProduto)
    escreveLinha(verdadeiro)
    //cadastro do produto e valor
    para (i = 0; i < cadastroProduto; i++) {
      escreva("Nome do produto: ")
      leia(nomeProduto[i])
      
      escreva("Preço do produto: R$")
      leia(valorProduto)
      escreveLinha(verdadeiro)

      valoresProdutos[i] = valorProduto
    //busca o maior e menor valor
      se (i == 0) {
        menorValor = valorProduto
      } senao {
        se (valorProduto > maiorValor) {
          maiorValor = valorProduto
        }
        se (valorProduto < menorValor) {
          menorValor = valorProduto
        }
      }
    //soma o valor dos produtos cadastrados
      somaProdutos = somaProdutos + valorProduto
    }
  
    //limpa a tela anterior de cadastro e Gera o relatorio
    limpa()
    escreveLinha(verdadeiro)
    escreva("-------------------Relatorio-------------------\n\n")
    escreveLinha(verdadeiro)
    //mostra na tela  a qtd de produtos cadastrados, maior e menor valor
    escreva("Qtd de produtos cadastrados: ", cadastroProduto)
    escreva("\nMaior valor: R$", maiorValor)
    escreva("\nMenor valor: R$", menorValor)

    escreveLinha(verdadeiro)
    escreva("-------------------Detalhes dos Produtos-------------------\n\n")
    escreveLinha(verdadeiro)
    //mostra o produto e seu valor cadastrado
    para (i = 0; i < cadastroProduto; i++) {
      escreva("Produto: ", nomeProduto[i])
      escreva("\nValor: R$", valoresProdutos[i])
      escreveLinha(verdadeiro)
    }
    //mostra o valor total de todos os produtos
    
    escreva("Soma de todos os produtos cadastrados R$", somaProdutos)
    escreveLinha(falso)
  }

  funcao escreveLinha(logico forte) {
    se(forte) {
      escreva("\n=============================================================================\n\n")
    } senao {
      escreva("\n\n---------------Copyright ©, all rights reserved.---------------\n\n\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
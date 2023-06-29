programa {
	inclua biblioteca Matematica --> mat
	inclua biblioteca Arquivos --> a
	inclua biblioteca Calendario --> cal
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
		escreva("-------------------RELATÓRIO-------------------\n\n")
		escreva("DATA DO RELATÓRIO: ", cal.dia_mes_atual()," / ", cal.mes_atual(), " / ", cal.ano_atual()," HORARIO DO RELATÓRIO: ", cal.hora_atual(falso), ":", cal.minuto_atual())
		
		
		escreveLinha(verdadeiro)
		
		
		
		//mostra na tela  a qtd de produtos cadastrados, maior e menor valor
		escreva("Qtd de produtos cadastrados: " + cadastroProduto)
		escreva("\nMaior valor: R$" + maiorValor)
		escreva("\nMenor valor: R$" + menorValor)

		escreveLinha(verdadeiro)
		escreva("-------------------Detalhes dos Produtos-------------------\n\n")
		escreveLinha(verdadeiro)
		
		//mostra o produto e seu valor cadastrado
		para (i = 0; i < cadastroProduto; i++) {
			escreva("Produto: " + nomeProduto[i])
			escreva("\nValor: R$" + valoresProdutos[i])
			escreveLinha(verdadeiro)
		}
		//mostra o valor total de todos os produtos
		escreva("Soma de todos os produtos cadastrados R$" + mat.arredondar(somaProdutos, 0))
  		escreveLinha(falso)
  		//*******CRIAR RELATORIO .TXT*******
  		inteiro arquivo = a.abrir_arquivo("./relatorio", a.MODO_ESCRITA)
  		a.escrever_linha("================================================================", arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">------------------------RELATÓRIO-----------------------------<", arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">-DATA DO RELATÓRIO: " + cal.dia_mes_atual() + " / " + cal.mes_atual() + " / " + cal.ano_atual() + " HORARIO DO RELATÓRIO: " + cal.hora_atual(falso) + ":" + cal.minuto_atual() + "-<", arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">------------Quantidade de produtos cadastrados: " + cadastroProduto, arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">--------------Maior valor cadastrado: R$" + maiorValor, arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">--------------Menor valor cadastrado: R$" + menorValor, arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">-------Soma de todos os produtos cadastrados: R$"+somaProdutos, arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha(">--------------Copyright ©, all rights reserved.---------------<", arquivo)
  		a.escrever_linha("=                                                              =", arquivo)
  		a.escrever_linha("================================================================", arquivo)
  		a.fechar_arquivo(arquivo)

		
  		
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
 * @POSICAO-CURSOR = 3973; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
programa {
	inclua biblioteca Matematica --> mat
	inclua biblioteca Arquivos --> a
	inclua biblioteca Calendario --> cal
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	funcao inicio() {
		real valorProduto, valoresProdutos[50], maiorValor = 0.0, menorValor = 0.0, somaProdutos = 0.0
		inteiro i, cadastroProduto, posicaoMaiorValor = 1, posicaoMenorValor = 1
		cadeia nomeProduto[50], usuario, senha, nomeUsuario = "adm", senhaUsuario = "123"
		inteiro opcao
		//tela de login
		escreva("Digite seu usuario: ")
		leia(usuario)
		escreva("Digite sua senha: ")
		leia(senha)
		escreva("Aguarde, efetuando login...")
		u.aguarde(1000)
		limpa()
		escreva("Bem vindo - login efetuado")
		//enquanto o usuario ou senha estiver incorreto ele repete
		enquanto(usuario != nomeUsuario ou senha != senhaUsuario) {
			limpa()
			escreva("usuario ou senha invalido\n")
			escreva("Digite seu usuario: ")
			leia(usuario)
			escreva("Digite sua senha: ")
			leia(senha)
			limpa()
			//se for digitado corretamente ele efetua o login
			se (usuario == nomeUsuario e senha == senhaUsuario){
				escreva("Aguarde, efetuando login...")
				u.aguarde(1000)
				limpa()
				escreva("Bem vindo - login efetuado")
			}
		}

		//apresentação do sistema
		escreveLinha(verdadeiro)
		escreva(t.caixa_alta("-------------------cadastro de produtos da oficina-------------------\n\n"))
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
			limpa()
			valoresProdutos[i] = valorProduto
			//busca o maior e menor valor
			se (i == 0) {
			menorValor = valorProduto
			posicaoMenorValor = i
			} senao {
				se (valorProduto > maiorValor) {
				maiorValor = valorProduto
				posicaoMenorValor = i
				}
				se (valorProduto < menorValor) {
				menorValor = valorProduto
				posicaoMenorValor = i
				}
			}
		//soma o valor dos produtos cadastrados
		somaProdutos = somaProdutos + valorProduto
		
		}
		faca {
  		//menu de escolhas
  		escreva("\t   ==========================================\n")
  		escreva("\t   ||                                      ||\n")
		escreva("\t   ||-----------Menu de Opções-------------||\n")
		escreva("\t   ||                                      ||\n")
		escreva("\t   ||--------1. Exibir relatório-----------||\n")
		escreva("\t   ||--------2. Sair-----------------------||\n")
		escreva("\t   ||                                      ||\n")
		escreva("\t   ==========================================\n")
		escreva("\t   Digite a opção: ")
		leia(opcao)
		limpa()
		//limpa a tela anterior de cadastro e Gera o relatorio
		escolha(opcao) {
			caso 1:
		limpa()
		escreva("Aguarde, Gerando relatorio...")
		u.aguarde(2000)
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
		
		//mostra os produtos e valores
		para (i = 0; i < cadastroProduto; i++) {
			escreva("\nProduto: " + nomeProduto[i] + "\t|\tValor: R$" + valoresProdutos[i] + "\n-\n")
		}
		//mostra o valor total de todos os produtos
		escreva("\n\nSoma de todos os produtos cadastrados R$" + mat.arredondar(somaProdutos, 1))
  		escreveLinha(verdadeiro)
  			pare

  			caso 2:
  				escreva("=================================================================\n")
  				escreva("||                                                             ||\n")
  				escreva("||----------------------logout com sucesso!--------------------||\n")
  				escreva("||                                                             ||\n")
  				escreva("||                                                             ||\n")
  				escreva("||-------------------------Volte sempre!-----------------------||\n")
  				escreva("||                                                             ||\n")
  				escreva("||                                                             ||\n")
  				escreva("||                                                             ||\n")
  				escreva("||---------------Copyright ©, all rights reserved.-------------||\n")
  				escreva("||                                                             ||\n")
  				escreva("||                                                             ||\n")
  				escreva("=================================================================\n")
  			pare
  			caso contrario:
  				escreva("                \t")
  				escreva("==================\n")  
				escreva("                \t||              ||\n")
				escreva("                \t||Opção inválida||\n")
				escreva("                \t||              ||\n")
				escreva("                \t==================\n")

		}
		} enquanto (opcao != 2)
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
 * @POSICAO-CURSOR = 2701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
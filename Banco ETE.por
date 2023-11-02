programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		//Variaveir utilizadas
		logico teste = verdadeiro
		inteiro contador = 10
		cadeia nome
		real saldoCor=0.0, saldoPou=0.0, deposito=0.0, saque=0.0, resgate=0.0, aplicacao=0.0
		
			//Descrição do nome do usuario
			escreva ("Olá!\nBem vindo ao bando do ETE!\nDigite seu nome:")
			leia(nome)
			
			//Aguarde um momento
				enquanto (contador > 0){
					limpa()
					escreva ("Aguerde um momento: ", contador)
			  		contador = contador - 1
					Util.aguarde(80)} // Aguarde 800 millisegundos
				limpa()
			//Retorno dos dados das contas
			escreva ("Obrigado por aguardar " , nome , ". Sua conta foi criada com sucesso!\n\n")
			escreva ("Agência: 0001 Conta corrente: 130505-8\n")
			escreva ("Agência: 0001 Conta poupança: 130505-7\n\n")

				//Looping do menu
				faca{
					inteiro resposDep
					inteiro opcao
						escreva("Selecione uma opção:\n")
						escreva("==================================\n")
						escreva("| 1. Depósito                    |\n")
						escreva("| 2. Saldo                       |\n")
						escreva("| 3. Saque                       |\n")
						escreva("| 4. Aplicação para poupança     |\n")
						escreva("| 5. Resgate da conta poupança   |\n")
						escreva("| 6. Dados da conta              |\n")
						escreva("| 7. Sair                        |\n")
						escreva("==================================\n")
						leia (opcao)

						//Definição da escolha do menu
						escolha(opcao){

						//Opção deposito em conta corrente
						caso 1:
						escreva ("Qual valor a ser depositado:")
						leia (deposito)
						se (deposito > 0.0){
						saldoCor = deposito + saldoCor
						limpa()
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n", "Seu saldo da conta poupança é: ", saldoPou, "\n\n")}		
							//Erro deposito
							senao se (deposito <= 0.0){
							limpa()
							escreva ("TAS LISO É?\n\n")}
						pare

						//Opção de saldo das contas
						caso 2:
						limpa()
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n", "Seu saldo da conta poupança é: ", saldoPou, "\n\n")
						pare
						
						//Opção de saque da conta corrente
						caso 3:
						escreva("Digite qual o valor desejado para sacar:")
						leia(saque)
						limpa()
						se (saque < saldoCor){
						saldoCor = saldoCor - saque
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n\n")}
							//Erro de saque
							senao se (saque > saldoCor){
							escreva ("Saldo menor que o valor desejado. Por favor verificar saldo!\n\n")}
						pare

						//Opção de aplicação na poupança
						caso 4:
						escreva("Digite o valor que deseja aplicar em sua conta poupança:")
						leia(aplicacao)
						limpa()
						se (saldoCor >= aplicacao){
						saldoCor = saldoCor - aplicacao
						saldoPou = saldoPou + aplicacao
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n", "Seu saldo da conta poupança é: ", saldoPou, "\n\n")}
							//Erro de aplicação
							senao se (saldoCor < aplicacao){
							escreva ("Valor menor que o saldo. Por favor verificar saldo!\n\n")}
						pare 	

						//Resgate da conta poupança
						caso 5:
						escreva("Digite o valor que deseja resgatar da conta poupança:")
						leia(resgate)
						limpa()
						se (saldoPou >= resgate){
						saldoCor = saldoCor + resgate
						saldoPou = saldoPou - resgate
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n", "Seu saldo da conta poupança é: ", saldoPou, "\n\n")}
							//Erro de Resgate
							senao se (saldoPou < resgate){
							escreva ("Valor menor que o saldo. Por favor verificar saldo!\n\n")}
						pare

						//Opção de vizualizar os dados
						caso 6:
						limpa()
						escreva ("Nome:", nome, "\n")
						escreva ("Agência: 0001 Conta corrente: 130505-8\n")
						escreva ("Agência: 0001 Conta poupança: 130505-7\n\n")
						pare
						
						//Opção finalizar programa
						caso 7:
						limpa()
						escreva("Agradecemos por utilizar o Banco ETE, volte sempre!\n\n")
				
						//Mudando a variavel teste para finalizar i looping
						teste = falso
						pare
						caso contrario:
						limpa()
						escreva("\n\nGentileza, selecione um opção que esteja no menu\n\n")

						}
			}
		enquanto (teste == verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
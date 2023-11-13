BancoETE - Sistema de Conta Bancária
Este é um programa simples escrito em Portugol que simula um sistema de contas bancárias. O programa permite criar e gerenciar conta corrente e conta poupança, realizando operações como saques, depósitos, aplicação na poupança e resgate.

Fucionalidades do Banco
• Interface de Menu: O programa possui um menu interativo que exibe as opções disponíveis ao usuário e solicita a entrada da opção desejada.

• Criação de Conta: O programa permite criar uma nova conta corrente. Ao criar a conta corrente, é solicitado o nome do titular, número da agência, número da conta corrente e dígito verificador.

• Depósito Inicial: Ao criar uma nova conta corrente, o programa dá a opção ao cliente de realizar um depósito inicial. Caso selecionado, é solicitado o valor a ser depositado e o saldo da conta corrente é atualizado.

• Exibição de Saldo: É possível exibir o saldo atual da conta corrente e da conta poupança.

• Saque: É possível realizar saques na conta corrente. O programa solicita o valor a ser sacado e verifica se o saldo é suficiente. Caso seja possível realizar o saque, o saldo da conta corrente é atualizado.

• Aplicação na Poupança: O programa permite aplicar um valor da conta corrente na conta poupança. É solicitado o valor a ser aplicado e, se o saldo da conta corrente for suficiente, o valor é transferido para a conta poupança.

• Depósito em Conta Corrente: É possível realizar depósitos na conta corrente. O programa solicita o valor a ser depositado e atualiza o saldo da conta corrente.

• Resgate da Poupança: É possível resgatar um valor da conta poupança para a conta corrente. O programa solicita o valor a ser resgatado e verifica se o saldo da conta poupança é suficiente. Caso seja possível realizar o resgate, o valor é transferido para a conta corrente.

# Detalhado
      
• Interface de Menu:           
      
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

• Criação de Conta junto a um timer RsRs: 
      
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

• Depósito:

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

• Exibição de Saldo:

          	//Opção de saldo das contas
						caso 2:
						limpa()
						escreva ("Seu saldo da corrente é: ", saldoCor, "\n", "Seu saldo da conta poupança é: ", saldoPou, "\n\n")
						pare
           
• Saque:

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


          
• Aplicação na Poupança:

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
          
• Depósito em Conta Corrente:

          caso 5:			     
			    se (usuario == falso) {
	     		escreva("\nVocê precisa de uma conta para fazer um Deposito.\n")
	     		escreva("\n")	     					     			
	     		pare
	     		}

	     		senao
	     		limpa()
	     		escreva("\nQual valor você deseja depositar? R$ ")
		 		leia(valor)
		 		saldoCC = saldoCC + valor
		   		escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
		   		escreva("\n")
		   		pare
          
          
• Resgate da Poupança:

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




• Visualização dos dados:
		
			//Opção de vizualizar os dados
						caso 6:
						limpa()
						escreva ("Nome:", nome, "\n")
						escreva ("Agência: 0001 Conta corrente: 130505-8\n")
						escreva ("Agência: 0001 Conta poupança: 130505-7\n\n")
						pare

				


					
• Opção de saida do programa:

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

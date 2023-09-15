programa {
  funcao inicio() {
    inteiro opcao_cadastro_login

    escreva("Bem vindo ao sistema, deseja se cadastrar ou realizar o login? \n")
    escreva("1) login \n")
		escreva("2) cadastro \n")

    escreva("Escolha uma opção: ")
		leia(opcao_cadastro_login)
		limpa()
  
    escolha (opcao_cadastro_login){
			caso 1: 
        login()
      pare
      caso 2: 
		 		cadastro()
		 	pare
		 	caso contrario:
		 		escreva ("Opção Inválida!")
		}
	}

  funcao login(){
    cadeia email = "yasmin@gmail.com"
    cadeia senha = "123456"
    inteiro tentativas = 0
    cadeia usuario_email
    cadeia usuario_senha
		logico sucesso = falso
    escreva("Bem vindo ao sistema de login! \n\n")

    enquanto(tentativas < 3){
      escreva("Digite seu email: ")
      leia(usuario_email)
      escreva("Digite seu senha: ")
      leia(usuario_senha)
      se(usuario_email == email e usuario_senha == senha){
        sucesso = verdadeiro
        pare
      }

      tentativas++
      escreva("\nUsuario ou senha incorertos \n")
      escreva("Você tem mais ", 3-tentativas, " chances \n")
    }
    se(sucesso) {
      escreva("Login feito com sucesso!!")
    } senao{
      escreva("Tentativas ultrapassaram o limite, usuário bloqueado")
    }
  }

  funcao cadastro(){
    cadeia email
    cadeia senha
		logico sucesso = falso
    escreva("Bem vindo ao sistema de cadastro! \n\n")

    escreva("Digite seu email: ")
    leia(email)
    escreva("Digite seu senha: ")
    leia(senha)
    
    escreva("Cadastro feito com sucesso!")
  }
}

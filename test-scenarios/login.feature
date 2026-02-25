# language: pt
Funcionalidade: Tela de login
  Como um usuário com perfil "Cliente" ou "tecnico"
  Eu quero fazer login no sistema
  Para que eu possa utilizar o sistema 

 Contexto:
  Dado que eu acesse a tela de login do sistema TicketSimples

 Cenário: login bem sucedido como cliente
  Quando eu digitar o usuário "cliente@empresa" e a senha "senha123"
  Entao o sistema deve me redirecionar para a tela de "minhas solicitações"

 Cenário: login bem sucedido como tecnico 
  Quando eu digitar o usuário "tecnico@ti.com" e a senha "admin123"
  Entao O sistema deve me redirecionar para a o "dashboard chamados abertos"

 Cenário: login usuario não cadastrado
Quando eu digitar um usuário inexistente como "usuario_fake@teste.com"
    E uma senha qualquer
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha incorretos"

Cenário: login senha com incorreta
 Quando eu digitar um usuário válido "cliente@empresa.com"
    E uma senha incorreta como "12345"
    Então o sistema não deve permitir o acesso
    E deve exibir a mensagem de alerta "Usuário ou senha incorretos"
     
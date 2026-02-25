# language: pt
Funcionalidade: Abertura de chamados
  Como um usuário com o perfil cliente
  Eu quero abrir chamados no sistema
  Para obter resoluções técnicas da equipe de TI

  Contexto: 
    Dado que eu acesse a tela de "Abrir novo chamado" no sistema TicketSimples

  Cenário: Envio de chamado com dados válidos
    Quando eu preencho o título com "Impressora não funciona"
    E preencho a descrição com "A impressora não está inicializando"
    E clico em "Enviar solicitação"
    Então o sistema deve exibir a mensagem "Solicitação enviada com sucesso"
    E deve gerar um número de protocolo para o chamado

  Cenário: Tentativa de envio com campos obrigatórios vazios
    Quando eu não preencho os campos de "título" e "descrição"
    E clico em "Enviar solicitação"
    Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"
    E não deve permitir a criação do chamado

  Cenário: Tentativa de envio com campo "descrição" vazio
    Quando eu preencho o campo de "título" com "Falha no sistema"
    E deixo o campo de "descrição" vazio
    E clico em "enviar solicitação"
    Então o sistema deve exibir a mensagem de alerta "Campo descrição obrigatório"

  Cenário: Tentativa de envio com campo "título" vazio
    Quando eu deixo o campo de "título" vazio
    E preencho o campo de "descrição" com "O sistema apresenta erro ao carregar"
    E clico em "enviar solicitação"
    Então o sistema deve exibir a mensagem de alerta "Campo título obrigatório"

  Esquema do Cenário: Validação de limites de caracteres no título
    Quando eu preencho o título com "<texto_titulo>"
    E preencho a descrição com "Descrição válida para o teste de limite"
    E clico em "Enviar solicitação"
    Então o sistema deve processar o resultado como "<mensagem_esperada>"

    Exemplos:
      | texto_titulo                                                              | mensagem_esperada               |
      | Bug                                                                       | Título muito curto              |
      | Impressora não liga                                                       | Solicitação enviada com sucesso |
      | Chamado no limite de cem caracteres para validar a integridade do banco de dados MySQL da faculdade USF | Solicitação enviada com sucesso |
      | Este título possui mais de cem caracteres para testar o estouro de limite do campo definido no sistema | Limite de caracteres excedido   |   



# language: pt

Funcionalidade: Visualizar Meus Chamados
  Como um usuário com perfil "Cliente"
  Eu quero acessar o histórico das minhas solicitações
  Para acompanhar o progresso e o status atual dos atendimentos

  Contexto:
    Dado que eu realize o login com credenciais válidas
    E navegue até o menu principal

  Cenário: Listagem de chamados com sucesso
    Dado que eu possua solicitações registradas no sistema
    Quando eu acessar a página de "Meus Chamados"
    Então o sistema deve exibir uma lista com todos os meus tickets
    E cada item deve apresentar "Protocolo", "Título", "Data" e "Status"

  Cenário: Filtrar chamados por status específico
    Dado que eu esteja na tela de "Meus Chamados"
    Quando eu aplicar o filtro pelo status "Resolvido"
    Então a lista deve exibir apenas os chamados que foram concluídos
    E não deve mostrar chamados com status "Em Aberto" ou "Em Andamento"

  Cenário: Visualização de tela sem chamados registrados
    Dado que eu não tenha realizado nenhuma abertura de chamado anteriormente
    Quando eu acessar a página de "Meus Chamados"
    Então o sistema deve exibir a mensagem "Você ainda não possui chamados cadastrados" 
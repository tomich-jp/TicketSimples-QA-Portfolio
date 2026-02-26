# language: pt
Funcionalidade: Fila de Chamados (Visão do Técnico)
  Como um usuário com perfil "Técnico"
  Quero acessar a fila de chamados do sistema
  Para visualizar e gerenciar as solicitações de todos os clientes

  Contexto:
    Dado que eu realize o login com um perfil de "Técnico" no TicketSimples

  Cenário: Visualização da fila global de chamados com sucesso
    Quando eu acessar o menu "Fila de Chamados"
    Então o sistema deve exibir todos os tickets que possuem o status "Aberto"
    E cada solicitação deve apresentar as colunas "Protocolo", "Título", "Data", "Cliente" e "Status"

 Cenário: Técnico assume a responsabilidade de um chamado
  Dado que exista um chamado com o status "Aberto" na fila
  Quando eu selecionar o chamado e clicar em "Iniciar Atendimento"
  Então o status do chamado deve mudar para "Em Andamento"
  E o meu nome deve aparecer como "Técnico Responsável"

Cenário: Ordenação de chamados por data
  Quando eu solicitar a ordenação por "Mais antigos"
  Então o sistema deve reexibir a lista com os protocolos de numeração menor no topo

Cenário: Bloqueio de acesso à fila global por perfil Cliente
  Dado que eu esteja logado com o perfil de "Cliente"
  Quando eu tentar acessar a URL direta da "Fila de Chamados"
  Então o sistema deve me redirecionar para a "Home"
  E exibir a mensagem "Acesso negado: permissão insuficiente"

Cenário: Visualização de fila de chamados sem solicitações pendentes
  Quando eu acessar o menu "fila de chamados"
  E não houver nenhuma solicitação nova
  Então o sistema deve exibir a ilustração de lista vazia
    E a mensagem informativa "Não há novas solicitações no momento"         
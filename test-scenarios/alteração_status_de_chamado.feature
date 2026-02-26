# language: pt
Funcionalidade: Alteração de Status dos Chamados
  Como um usuário do perfil "Técnico"
  Quero alterar o status dos chamados
  Para registrar o progresso e a solução técnica para os usuários

  Contexto: 
    Dado que eu esteja logado como "Técnico"
    E acesse a "Fila de Chamados"

  Cenário: Alteração de "Aberto" para "Em Andamento"
    Dado que exista um chamado com o status "Aberto"
    Quando eu alterar o status para "Em Andamento"
    Então o sistema deve atualizar o status na fila e no histórico do cliente

  Cenário: Alteração de "Em Andamento" para "Resolvido" com sucesso
    Dado que o chamado selecionado esteja com o status "Em Andamento"
    Quando eu definir o status como "Resolvido"
    E preencher a "Descrição da Solução" com os detalhes técnicos
    E clicar em "Atualizar"
    Então o sistema deve encerrar o chamado e movê-lo para o histórico de "Resolvidos"

  Cenário: Bloqueio de finalização sem descrição da solução (Sad Path)
    Dado que o chamado selecionado esteja com o status "Em Andamento"
    Quando eu tentar alterar o status para "Resolvido"
    E deixar o campo "Descrição da Solução" vazio
    Então o sistema deve exibir o alerta "Não foi possível alterar o status: descrição obrigatória"
    E o status do chamado deve permanecer como "Em Andamento"

  Cenário: Reabertura de chamado pelo Cliente
    Dado que um chamado esteja com o status "Resolvido"
    Quando o "Cliente" enviar uma nova interação ou contestação no chamado
    Então o sistema deve alterar o status automaticamente para "Aberto"
    E exibi-lo novamente no topo da "Fila de Chamados" do técnico

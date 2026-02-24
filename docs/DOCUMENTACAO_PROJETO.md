# 📖 Documentação de Requisitos e Regras de Negócio

Este documento descreve as funcionalidades e regras do sistema **TicketSimples**, servindo como base para a estratégia de QA.

## 1. Perfis de Usuário e Permissões
O sistema é dividido em dois níveis de acesso distintos:

* **Cliente (Funcionário):** * Pode abrir chamados de suporte.
    * Visualiza apenas o seu próprio histórico de solicitações.
    * Acompanha o status atual (Aberto, Em Andamento, Resolvido).
* **Técnico (Equipe de TI):** * Visualiza a fila global de chamados em ordem cronológica.
    * Atribui chamados a si mesmo.
    * Altera o status e adiciona comentários técnicos.

## 2. Regras de Negócio (Business Rules)
Para garantir a integridade do processo, as seguintes regras foram estabelecidas:
1.  **Abertura de Chamado:** É obrigatório o preenchimento dos campos "Título" e "Descrição".
2.  **Identificação:** Cada chamado deve gerar automaticamente um número de protocolo único e registrar a data de abertura.
3.  **Fluxo de Status:** Um chamado deve obrigatoriamente iniciar com o status "Aberto". Apenas o perfil Técnico pode movê-lo para "Em Andamento" ou "Resolvido".
4.  **Segurança:** Um usuário com perfil "Cliente" não deve ter acesso às rotas de administração ou painéis de outros técnicos.

## 3. Fluxo de Funcionamento (Workflow)
1.  **Início:** Usuário realiza login.
2.  **Solicitação:** Cliente preenche formulário de chamado.
3.  **Processamento:** Chamado aparece na fila do Técnico.
4.  **Atendimento:** Técnico assume o ticket e altera o status.
5.  **Finalização:** Chamado é marcado como resolvido e o histórico é atualizado para o Cliente.

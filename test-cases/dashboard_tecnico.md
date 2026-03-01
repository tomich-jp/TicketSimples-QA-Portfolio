# Casos de Teste - Funcionalidade: Visão do Técnico
**Documento de Referência:** `test-cases/dashboard_tecnico.md`  
**Sistema:** TicketSimples  
**Responsável:** João Pedro Tomich

---

### CT-TEC-001: Visualização da Fila Global
**Prioridade:** Alta | **Pré-condição:** Usuário logado com perfil "Técnico".

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar o menu "Fila de Chamados" | O sistema deve listar todos os chamados abertos de todos os clientes. | [x] Passou [ ] Falhou |
| 2 | Verificar as colunas da tabela | Deve exibir: Protocolo, Título, Cliente, Data e Status. | [x] Passou [ ] Falhou |

---

### CT-TEC-002: Alteração de Status (Em Andamento)
**Prioridade:** Alta | **Pré-condição:** Existir chamado com status "Aberto".

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Selecionar um chamado "Aberto" e clicar em "Atender" | O status do chamado deve mudar para "Em Andamento". | [x] Passou [ ] Falhou |
| 2 | Verificar log de histórico | O sistema deve registrar que o técnico X assumiu o chamado. | [x] Passou [ ] Falhou |

---

### CT-TEC-003: Finalização de Chamado com Descrição
**Prioridade:** Alta | **Pré-condição:** Chamado estar "Em Andamento".

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Alterar status para "Resolvido" e preencher a "Solução" | O sistema deve salvar a solução e encerrar o chamado. | [x] Passou [ ] Falhou |
| 2 | Verificar listagem | O chamado deve sair da fila de "Pendentes". | [x] Passou [ ] Falhou |
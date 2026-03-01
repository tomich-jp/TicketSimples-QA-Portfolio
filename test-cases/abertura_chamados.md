# Casos de Teste - Funcionalidade: Abertura e Acompanhamento de Chamados
**Documento de Referência:** `test-cases/abertura_chamados.md`  
**Sistema:** TicketSimples  
**Responsável:** João Pedro Tomich

---

### CT-CHA-001: Abertura de chamado com sucesso
**Prioridade:** Alta | **Pré-condição:** Usuário logado e com acesso ao menu "Abrir novo chamado".

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar o menu "Abrir novo chamado" | O sistema deve carregar a página de abertura sem erros. | [x] Passou [ ] Falhou |
| 2 | Inserir o título da solicitação no campo "Título" | O sistema deve permitir a digitação e exibir o texto corretamente. | [x] Passou [ ] Falhou |
| 3 | Inserir a descrição no campo "Descrição do Problema" | O sistema deve exibir corretamente o que foi descrito. | [x] Passou [ ] Falhou |
| 4 | Clicar no botão "Salvar Chamado" | O sistema deve salvar os dados, exibir mensagem de sucesso e redirecionar para "Meus Chamados". | [x] Passou [ ] Falhou |

---

### CT-CHA-002: Tentativa de abertura com campo "Título" vazio
**Prioridade:** Média | **Pré-condição:** Usuário logado.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar o menu "Abrir novo chamado" | Página carregada com sucesso. | [x] Passou [ ] Falhou |
| 2 | Inserir a descrição do problema e deixar o título vazio | Descrição preenchida, título em branco. | [x] Passou [ ] Falhou |
| 3 | Clicar no botão "Salvar Chamado" | O sistema deve exibir o alerta "Preencha este campo" no campo "Título". | [x] Passou [ ] Falhou |

---

### CT-CHA-003: Tentativa de abertura com campo "Descrição" vazio
**Prioridade:** Média | **Pré-condição:** Usuário logado.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar o menu "Abrir novo chamado" | Página carregada com sucesso. | [x] Passou [ ] Falhou |
| 2 | Inserir o título e deixar a descrição vazia | Título preenchido, descrição em branco. | [x] Passou [ ] Falhou |
| 3 | Clicar no botão "Salvar Chamado" | O sistema deve exibir o alerta "Preencha este campo" no campo "Descrição". | [x] Passou [ ] Falhou |

---

### CT-CHA-004: Acompanhamento de chamados (Menu Meus Chamados)
**Prioridade:** Alta | **Pré-condição:** Usuário possuir chamados cadastrados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar o menu "Meus Chamados" | O sistema deve carregar a lista de todos os chamados do usuário. | [x] Passou [ ] Falhou |
| 2 | Clicar em uma solicitação anterior | O sistema deve exibir os detalhes: Data de Abertura e Status Atual (Aberto, Em Andamento ou Resolvido). | [x] Passou [ ] Falhou |



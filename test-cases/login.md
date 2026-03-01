# Casos de Teste - Funcionalidade de Login
**Documento de Referência:** `test-cases/login.md`  
**Sistema:** TicketSimples  
**Responsável:** João Pedro Tomich

---

## 📋 Resumo dos Testes
Este documento detalha os testes manuais realizados na tela de login, cobrindo cenários de sucesso, erro, segurança e robustez.

---

### CT-LOG-001: Login com Sucesso (Perfil Cliente)
**Prioridade:** Alta | **Pré-condição:** Usuário cadastrado no banco de dados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar a URL `localhost/TicketSimples/` | A tela de login deve carregar com os campos de E-mail e Senha. | [x] Passou [ ] Falhou |
| 2 | Inserir um e-mail válido (ex: joao@empresa.com) | O sistema deve permitir a digitação e exibir o texto no campo "E-mail". | [x] Passou [ ] Falhou |
| 3 | Inserir uma senha válida (ex: 1234) | O sistema deve exibir os caracteres em formato de asteriscos no campo "Senha". | [x] Passou [ ] Falhou |
| 4 | Clicar no botão "Entrar" | O sistema deve realizar a autenticação e abrir a página "Meus Chamados". | [x] Passou [ ] Falhou |

---

### CT-LOG-002: Login com Senha Incorreta
**Prioridade:** Alta | **Pré-condição:** E-mail deve existir no banco de dados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar a URL `localhost/TicketSimples/` | Tela de login exibida. | [x] Passou [ ] Falhou |
| 2 | Inserir um endereço de e-mail válido | Campo preenchido corretamente. | [ ] Passou [x] Falhou |
| 3 | Inserir uma senha incorreta | Campo preenchido com caracteres mascarados. | [ ] Passou [x] Falhou |
| 4 | Clicar no botão "Entrar" | O sistema deve limpar os campos e exibir a mensagem: "Usuário ou senha inválidos". | [x] Passou [] Falhou |

---

### CT-LOG-003: Tentativa de Login com Usuário Inexistente
**Prioridade:** Média | **Pré-condição:** E-mail não deve estar cadastrado.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar a URL `localhost/TicketSimples/` | Tela de login carregada. | [x] Passou [ ] Falhou |
| 2 | Inserir um e-mail não cadastrado | Campo aceita a digitação. | [x] Passou [ ] Falhou |
| 3 | Inserir qualquer senha | Campo aceita a digitação. | [x] Passou [ ] Falhou |
| 4 | Clicar no botão "Entrar" | O sistema deve exibir a mensagem: "Usuário ou senha inválidos". | [x] Passou [ ] Falhou |
| 5 | Permanência na tela | O usuário deve continuar na tela de login para nova tentativa. | [x] Passou [ ] Falhou |

---

### CT-LOG-004: Tentativa de Login com Campos Vazios
**Prioridade:** Alta | **Pré-condição:** Nenhuma.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Acessar a URL `localhost/TicketSimples/` | Tela de login carregada. | [x] Passou [ ] Falhou |
| 2 | Deixar os campos "E-mail" e "Senha" em branco | Campos permanecem vazios. | [x] Passou [ ] Falhou |
| 3 | Clicar no botão "Entrar" | O sistema deve exibir o alerta: "Preencha todos os campos". | [x] Passou [ ] Falhou |
| 4 | Verificação de bloqueio | O sistema não deve processar a requisição de login. | [x] Passou [ ] Falhou |

---

### CT-LOG-005: Prevenção de SQL Injection Básico
**Prioridade:** Alta | **Pré-condição:** Nenhuma.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Inserir no campo e-mail: `' OR '1'='1` | O campo deve aceitar a digitação dos caracteres. | [x] Passou [ ] Falhou |
| 2 | Inserir qualquer senha e clicar em "Entrar" | O sistema deve tratar como texto comum e negar o acesso. | [x] Passou [ ] Falhou |
| 3 | Segurança | O sistema deve exibir "Usuário ou senha inválidos" e não conceder acesso. | [x] Passou [ ] Falhou |

---

### CT-LOG-006: Tratamento de Espaços em Branco (Trim)
**Prioridade:** Baixa | **Pré-condição:** Usuário cadastrado no banco de dados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Inserir e-mail válido com espaço no final (`joao@empresa.com `) | O campo aceita a entrada. | [x] Passou [ ] Falhou |
| 2 | Inserir a senha correta e clicar em "Entrar" | O sistema deve remover o espaço automaticamente e logar com sucesso. | [x] Passou [ ] Falhou |





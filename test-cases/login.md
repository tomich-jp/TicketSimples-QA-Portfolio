# Plano de Testes: Funcionalidade de Login
**Documento de referência:** `test-scenarios/login.feature`

---

## CT-LOG-001: Login com Sucesso (Perfil Cliente)
**Prioridade:** Alta | **Pré-condição:** Usuário deve estar previamente cadastrado no banco de dados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Aceder à URL `localhost/TicketSimples` | A tela de login deve carregar com os campos de E-mail e Senha. | [x] Passou [ ] Falhou |
| 2 | Inserir um e-mail válido (ex: cliente@teste.com) | O sistema deve aceitar o texto sem disparar validações. | [x] Passou [ ] Falhou |
| 3 | Inserir a senha correspondente (ex: 123456) | Os caracteres devem ser exibidos como asteriscos ou pontos. | [x] Passou [ ] Falhou |
| 4 | Clicar no botão "Entrar" | O sistema deve autenticar e redirecionar para a Home do Cliente. | [x] Passou [ ] Falhou |

---

## CT-LOG-002: Login com Senha Incorreta
**Prioridade:** Alta | **Pré-condição:** E-mail deve existir no banco de dados.

| Passo | Ação | Resultado Esperado | Status |
| :--- | :--- | :--- | :--- |
| 1 | Aceder à URL `localhost/TicketSimples` | Tela de login carregada. | [x] Passou [ ] Falhou |
| 2 | Inserir um e-mail válido | Campo preenchido. | [x] Passou [ ] Falhou |
| 3 | Inserir uma senha errada | Campo preenchido. | [x] Passou [ ] Falhou |
| 4 | Clicar no botão "Entrar" | O sistema deve exibir a mensagem: "Usuário ou senha inválidos". | [ ] Passou [x] Falhou |
| 5 | Permanência na tela | O usuário deve continuar na tela de login para tentar novamente. | [x] Passou [ ] Falhou |
# Bug Report: Permissão de encerramento de chamado sem descrição técnica

**ID:** BUG001 | **Severidade:** Média | **Status:** Aberto

### 1. Descrição
O sistema permite que o usuário técnico altere o status de um chamado para "Resolvido" sem a obrigatoriedade de preencher o campo de solução/descrição técnica.

### 2. Passos para Reproduzir
1. Logar como Técnico.
2. Acessar o menu "Solicitações".
3. Selecionar um chamado com status "Aberto".
4. Clicar em "Alterar Status".
5. Selecionar "Resolvido" e clicar em "Salvar" sem digitar nada no campo de texto.

### 3. Resultado Esperado
O sistema deve barrar a alteração e exibir uma mensagem de erro: "Obrigatório informar a solução técnica para encerrar o chamado".

### 4. Resultado Obtido
O sistema salva a alteração com sucesso, deixando o histórico do cliente sem informações sobre o que foi feito.
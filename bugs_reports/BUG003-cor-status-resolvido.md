# Bug Report: Inconsistência visual na cor do status "Resolvido"

**ID:** BUG003 | **Severidade:** Baixa (UI/UX) | **Status:** Aberto

### 1. Descrição
Na listagem de "Meus Chamados", o status "Resolvido" está sendo exibido com a cor vermelha, o que gera confusão visual para o usuário, pois o vermelho é universalmente associado a "Erro" ou "Atraso".

### 2. Passos para Reproduzir
1. Logar como Cliente ou Técnico.
2. Acessar a lista de chamados/solicitações.
3. Localizar um chamado que já foi finalizado.

### 3. Resultado Esperado
O status "Resolvido" deve ser exibido em **Verde** ou **Azul**, indicando conclusão positiva do fluxo.

### 4. Resultado Obtido
O status é exibido com a classe de cor vermelha (ex: `label-danger` ou `text-red`), a mesma utilizada para chamados "Cancelados".
# Bug Report: Aceitação de título contendo apenas espaços em branco

**ID:** BUG002 | **Severidade:** Baixa | **Status:** Aberto

### 1. Descrição
O sistema permite a abertura de chamados onde o campo "Título" é preenchido apenas com espaços em branco (caracteres de espaço), sem nenhum conteúdo alfanumérico.

### 2. Passos para Reproduzir
1. Logar como Cliente.
2. Acessar "Abrir novo chamado".
3. No campo "Título", pressionar a tecla [Espaço] cinco vezes.
4. Preencher a "Descrição" normalmente.
5. Clicar em "Salvar Chamado".

### 3. Resultado Esperado
O sistema deve identificar que o campo está vazio (falta de caracteres válidos) e exibir o alerta: "O título não pode conter apenas espaços".

### 4. Resultado Obtido
O chamado é salvo com sucesso e exibido na lista de solicitações com o título invisível/vazio.
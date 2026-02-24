# 📑 Plano de Testes: Projeto TicketSimples (Helpdesk Web)

**Versão:** 1.0  
**Responsável:** João Pedro Tomich  
**Contexto:** Projeto de Análise e Desenvolvimento de Sistemas (USF)  
**Data:** 24/02/2026

---

## 1. Introdução e Objetivo
O projeto **TicketSimples** visa solucionar a desorganização de solicitações de suporte em pequenas empresas, centralizando chamados que antes eram feitos por canais informais. O objetivo deste plano é estabelecer a estratégia de QA para garantir que o sistema seja intuitivo, seguro e funcional, permitindo que funcionários abram chamados e técnicos gerenciem a fila de atendimento sem falhas de processo.

## 2. Escopo do Teste

### 2.1 Em Escopo (Funcionalidades)
* **Módulo de Autenticação:** Login seguro diferenciando perfis de "Cliente" e "Técnico".
* **Abertura de Chamados:** Validação de campos obrigatórios (Título e Descrição) e persistência no banco de dados.
* **Gestão de Chamados (Cliente):** Visualização do histórico pessoal e acompanhamento de status (Aberto, Em Andamento, Resolvido).
* **Painel do Técnico (Dashboard):** Visualização da fila em ordem cronológica e funcionalidade de atribuição e alteração de status.
* **Interface (UI/UX):** Responsividade do layout Bootstrap e clareza das mensagens de feedback ao usuário.

### 2.2 Fora de Escopo
* Integração com sistemas externos de envio de e-mail (SMTP).
* Testes de carga para acessos simultâneos acima de 500 usuários.

## 3. Estratégia de Teste
A abordagem será pautada pelo rigor operacional e integridade de dados, utilizando ciclos de testes manuais e documentação técnica.

* **Testes Funcionais (Caixa Preta):** Validação das regras de negócio sem necessidade de acesso ao código fonte.
* **Testes de Segurança (Controle de Acesso):** Garantir que um usuário comum não acesse o dashboard do técnico via manipulação de URL.
* **Testes de Usabilidade:** Avaliação da facilidade de navegação, focando na redução de erros operacionais pelo usuário final.
* **Testes de Regressão:** Execução de testes em funcionalidades já aprovadas sempre que houver correção de bugs no banco de dados MySQL.

## 4. Critérios de Aceite

### 4.1 Critérios de Entrada
* Ambiente de desenvolvimento configurado (XAMPP/PHP 8.2).
* Banco de dados MySQL 8.0 populado com massa de dados de teste.
* Funcionalidades entregues conforme o Diagrama de Casos de Uso da USF.

### 4.2 Critérios de Saída
* 100% dos fluxos críticos (Login e Abertura de Chamado) executados com sucesso.
* Zero bugs de severidade "Crítica" ou "Alta" em aberto.
* Todos os cenários de comportamento (BDD) validados e documentados.

## 5. Ambiente e Ferramentas
* **Tecnologias:** PHP 8.2, MySQL 8.0, Bootstrap 5.
* **Navegadores:** Google Chrome (Principal) e Firefox.
* **Gestão de Testes:** Repositório GitHub (Issues para reporte de defeitos).
* **Documentação:** Markdown e Cenários em Gherkin (BDD).

## 6. Gestão de Riscos e Mitigação

| Risco Identificado | Impacto | Plano de Mitigação |
| :--- | :--- | :--- |
| **Integridade de Dados:** Erro ao salvar caracteres especiais no banco MySQL | Alto | Aplicar testes de valores limite nos campos de texto e validar o Collation do banco. |
| **Quebra de Layout:** Interface Bootstrap desconfigurada em telas menores | Médio | Executar testes de UI em diferentes resoluções de tela (Responsividade). |
| **Atraso de Cronograma:** Prazo apertado para testar todas as funcionalidades | Médio | Priorizar os testes pelo critério de valor de negócio (Login e Fila de Chamados). |

## 7. Padrão de Reporte de Bugs
Cada falha encontrada será documentada com o seguinte padrão de rigor técnico:
1. **Título:** Descrição clara e concisa do erro.
2. **Severidade:** (Crítica, Alta, Média ou Baixa).
3. **Passos para Reproduzir:** Sequência exata de ações para chegar ao erro.
4. **Resultado Esperado:** O que o sistema deveria fazer.
5. **Resultado Obtido:** O que o sistema realmente fez.
6. **Evidência:** Screenshot ou vídeo do comportamento anômalo.

## 8. Cronograma Estimado
* **Planejamento de Cenários:** 2 dias.
* **Execução de Testes Manuais:** 3 dias.
* **Reteste e Homologação:** 2 dias.

---

Markdown
# 🏦 Sistema Bancário (Database Project)

Projeto de banco de dados relacional desenvolvido para modelar, estruturar e gerenciar as operações fundamentais de um sistema bancário utilizando **MySQL**.

## 📊 Modelo Relacional (DER)
Abaixo está a representação visual da modelagem do banco de dados, evidenciando as tabelas e suas respectivas chaves primárias e estrangeiras:

![Diagrama Entidade-Relacionamento](./docs/der(diagrama).png)

## 📁 Estrutura do Repositório

O projeto está dividido de forma modular para seguir as melhores práticas de Engenharia de Dados:

* **`schema.sql`**[cite: 6]: Contém os scripts DDL (Data Definition Language) responsáveis pela criação do banco de dados e das tabelas estruturais (`BANCO`, `CLIENTE`, `CONTA`, `CARTAO`, `CAIXA_ELETRONICO`, `TRANSACAO`).
* **`data.sql`**[cite: 6]: Contém os scripts DML (Data Manipulation Language) para a inserção de dados iniciais e populamento de testes.
* **`consulta.sql`**[cite: 6]: Contém exemplos de consultas avançadas utilizando cruzamentos de dados (`JOIN`), ordenações e agregações (`GROUP BY`).

## 🛠️ Tecnologias Utilizadas
* **MySQL / MySQL Workbench**[cite: 3]
* **Modelagem Relacional (DER)**

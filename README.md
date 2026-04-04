# 🖊️ ETL Data Pipeline: Papelaria Master 📊

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white" />
  <img src="https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white" />
  <img src="https://img.shields.io/badge/Apache_Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white" />
  <img src="https://img.shields.io/badge/Matplotlib-3776AB?style=for-the-badge&logo=python&logoColor=white" />
</p>

<br>


## 📖 Sobre o Projeto
Este repositório apresenta um pipeline de dados de ponta a ponta (End-to-End) focado em uma rede de papelarias. O objetivo principal é demonstrar a movimentação de dados desde um ambiente transacional (**MySQL**) até a camada analítica no **Databricks**, utilizando a **Arquitetura de Medalhão** (Bronze, Silver e Gold).

O diferencial deste projeto é o tratamento de dados propositalmente "sujos" (inconsistências de datas, valores negativos e nulos), simulando os desafios reais de um Engenheiro de Dados.

<br>


## 🎯 Objetivos Estratégicos
- **Integridade**: Garantir que apenas dados válidos cheguem ao relatório final.
- **Escalabilidade**: Utilizar tabelas Delta para alta performance.
- **Visualização**: Gerar insights sobre o faturamento mensal e semestral para tomada de decisão.

<br>


## 🏗️ Arquitetura do Pipeline

1.  **Source (MySQL)**: Dados de clientes, produtos e pedidos com inconsistências lógicas.
2.  **Extração**: Scripts SQL para exportação otimizada em CSV.
3.  **Bronze 🥉**: Ingestão bruta para o **Unity Catalog (Volumes)** e conversão para Delta Tables.
4.  **Silver 🥈**: Limpeza pesada utilizando **Pandas API on Spark**, tratando outliers, nulos e padronização de strings.
5.  **Gold 🥇**: Aplicação de JOINS complexos e regras de negócio para consolidação dos dados.
6.  **Analytics**: Dashboards desenvolvidos com **Matplotlib** e **Seaborn**.

<br>


## 📂 Estrutura do Repositório

```text
├── data/
│   └── raw/                # Arquivos CSV originais (Raw Data)
├── notebooks/
│   ├── 01_bronze_layer     # Ingestão e metadados
│   ├── 02_silver_layer     # Limpeza e Pandas API on Spark
│   └── 03_gold_layer       # Business Rules e Visualização
├── sql/
│   ├── create_tables.sql   # DDL do banco transacional
│   ├── insert_data.sql     # Massa de dados (corretos e inconsistentes)
│   └── export_data.sql     # Script de exportação CSV
├── .gitignore              # Filtro de arquivos desnecessários
├── requirements.txt        # Dependências do projeto
└── README.md               # Documentação principal
```

<br>


## 🚀 Como Reproduzir

1. **Banco de Dados:** Execute os scripts da pasta /sql no seu MySQL local.
2. **Exportação:** Gere os CSVs e coloque-os na pasta data/raw (ou suba direto no Volume do Databricks).
3. **Databricks:**
   - Importe os notebooks.
   - No Notebook 01, aponte o caminho para o seu Volume do Unity Catalog.
   - Execute as células em ordem sequencial.

<br>


## 📈 Insights Gerados

O pipeline final entrega visões claras sobre:
   - **Evolução Mensal:** Linha de tendência de faturamento.
   - **Performance por Categoria:** Quais produtos (Escrita, Papelaria, Escolar) trazem mais margem.
   - **Visão Semestral:** Comparativo de desempenho entre o 1º e 2º semestre.
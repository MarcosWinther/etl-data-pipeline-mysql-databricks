CREATE DATABASE IF NOT EXISTS papelaria_db;
USE papelaria_db;
 
-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente    INT AUTO_INCREMENT PRIMARY KEY,
    nome          VARCHAR(100),
    email         VARCHAR(100),
    telefone      VARCHAR(20),
    cidade        VARCHAR(60),
    estado        VARCHAR(2),
    data_cadastro DATE
);
 
-- Tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
    id_produto    INT AUTO_INCREMENT PRIMARY KEY,
    nome          VARCHAR(100),
    categoria     VARCHAR(50),
    preco         DECIMAL(10, 2),
    estoque       INT,
    unidade       VARCHAR(20)
);
 
-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido     INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente    INT,
    data_pedido   DATE,
    status        VARCHAR(20),
    total         DECIMAL(10, 2),
    forma_pgto    VARCHAR(30)
);
 
-- Tabela de Itens de Pedido
CREATE TABLE IF NOT EXISTS itens_pedido (
    id_item       INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido     INT,
    id_produto    INT,
    quantidade    INT,
    preco_unit    DECIMAL(10, 2),
    subtotal      DECIMAL(10, 2)
);
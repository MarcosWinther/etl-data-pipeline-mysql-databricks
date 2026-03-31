USE papelaria_db;

-- Exportando Clientes
SELECT 'id_cliente', 'nome', 'email', 'telefone', 'cidade', 'estado', 'data_cadastro'
UNION ALL
SELECT * FROM clientes
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clientes.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Exportando Produtos
SELECT 'id_produto', 'nome', 'categoria', 'preco', 'estoque', 'unidade'
UNION ALL
SELECT * FROM produtos
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/produtos.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Exportando Pedidos
SELECT 'id_pedido', 'id_cliente', 'data_pedido', 'status', 'total', 'forma_pgto'
UNION ALL
SELECT * FROM pedidos
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pedidos.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Exportando Itens de Pedido
SELECT 'id_item', 'id_pedido', 'id_produto', 'quantidade', 'preco_unit', 'subtotal'
UNION ALL
SELECT * FROM itens_pedido
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/itens_pedido.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
USE papelaria_db;

-- ==========================================================
-- 1. CLIENTES (15 registros: 8 certos, 7 "sujos" que o MySQL aceita)
-- ==========================================
INSERT INTO clientes (nome, email, telefone, cidade, estado, data_cadastro) VALUES 
('Ana Silva', 'ana.silva@email.com', '11988887777', 'São Paulo', 'SP', '2023-01-10'),
('Bruno Costa', 'bruno.c@gmail.com', '21977776666', 'Rio de Janeiro', 'RJ', '2023-02-15'),
('Carla Souza', 'carla.souza@outlook.com', '31966665555', 'Belo Horizonte', 'MG', '2023-03-20'),
('Diego Lima', 'diego.lima@uol.com.br', '41955554444', 'Curitiba', 'PR', '2023-04-05'),
('Elena Martins', 'elena.m@empresa.com', '51944443333', 'Porto Alegre', 'RS', '2023-05-12'),
('Fabio Santos', 'fabio.s@provedor.com', '61933332222', 'Brasília', 'DF', '2023-06-18'),
('Gisele Ramos', 'gisele.r@email.com', '71922221111', 'Salvador', 'BA', '2023-07-22'),
('Heitor Neto', 'heitor.neto@gmail.com', '81911110000', 'Recife', 'PE', '2023-08-30'),
-- ERROS TRATÁVEIS:
('marcelo oliveira', NULL, '11888', 'São Paulo', 'SP', '2023-09-01'), -- Nome minúsculo e Email Nulo
('JULIANA PAES', 'ju.paes@email.com', '2199999', 'Rio', 'XX', '2023-10-10'), -- Nome Caps e Estado 'XX'
('Carlos Erro', 'carlos@errado', '0000', 'S. Paulo', 'SP', '2024-12-20'), -- Email sem .com (Data corrigida p/ 12)
('Fernanda', 'fer@mail.com', '3199', 'BH', 'mg', '2023-11-05'), -- Estado minúsculo
('Roberto Carlos', 'rc@musica.com', '1122', 'Santos', 'SP', '1900-01-01'), -- Data muito antiga
('', 'vazio@email.com', '1133', 'Campinas', 'SP', '2023-12-01'), -- Nome vazio (mas não nulo)
('Igor Errado', 'igor@email.com', '99', 'Manaus', 'AM', '2099-01-01'); -- Data no futuro

-- ==========================================
-- 2. PRODUTOS (25 registros)
-- ==========================================
INSERT INTO produtos (nome, categoria, preco, estoque, unidade) VALUES 
('Caderno 10 matérias', 'Papelaria', 25.90, 100, 'UN'),
('Lápis de cores 12 cores', 'Escolar', 15.50, 200, 'CX'),
('Marcador de texto Amarelo', 'Escrita', 4.80, 150, 'UN'),
('Caderno brochura', 'Papelaria', 12.00, 80, 'UN'),
('Caderno de caligrafia', 'Escolar', 9.50, 60, 'UN'),
('Caneta Azul', 'Escrita', 2.50, 500, 'UN'),
('Caneta Preta', 'Escrita', 2.50, 450, 'UN'),
('Caneta Vermelha', 'Escrita', 2.50, 300, 'UN'),
('Lapiseira 0.7', 'Escrita', 18.90, 120, 'UN'),
('Borracha Branca', 'Escolar', 1.50, 400, 'UN'),
('Cola Bastão', 'Escolar', 6.50, 90, 'UN'),
('Régua 30cm', 'Escolar', 3.20, 110, 'UN'),
('Tesoura Escolar', 'Escolar', 7.90, 70, 'UN'),
('Apontador com depósito', 'Escolar', 5.50, 130, 'UN'),
('Papel A4 500fls', 'Suprimentos', 32.00, 50, 'PT'),
('Grampeador Pequeno', 'Escritório', 22.00, 40, 'UN'),
('Clips n2 100un', 'Escritório', 4.50, 300, 'CX'),
('Estojo Simples', 'Escolar', 14.00, 85, 'UN'),
('Mochila Básica', 'Escolar', 89.90, 25, 'UN'),
('Calculadora Científica', 'Eletrônicos', 65.00, 15, 'UN'),
-- ERROS TRATÁVEIS:
('Produto Negativo', 'Teste', -10.00, 10, 'UN'), -- Preço negativo
('Estoque Negativo', 'Papelaria', 5.00, -5, 'UN'), -- Estoque negativo
('Caneta S/ Unidade', 'Escrita', 2.50, 1000, NULL), -- Unidade Nula
('Item Outlier', 'ESCOLAR', 9999.99, 1, 'UN'), -- Preço exorbitante
('Item S/ Categoria', NULL, 1.99, 100, 'UN'); -- Categoria Nula

-- ==========================================
-- 3. PEDIDOS (25 registros)
-- ==========================================
INSERT INTO pedidos (id_cliente, data_pedido, status, total, forma_pgto) VALUES 
(1, '2023-01-20', 'Concluído', 50.00, 'Cartão de Crédito'),
(2, '2023-02-10', 'Concluído', 30.50, 'Pix'),
(3, '2023-03-05', 'Concluído', 105.90, 'Boleto'),
(4, '2023-04-12', 'Enviado', 45.00, 'Cartão de Débito'),
(5, '2023-05-15', 'Concluído', 12.50, 'Pix'),
(6, '2023-06-20', 'Cancelado', 0.00, 'Dinheiro'),
(7, '2023-07-25', 'Concluído', 200.00, 'Cartão de Crédito'),
(8, '2023-08-05', 'Concluído', 88.40, 'Pix'),
(1, '2023-09-10', 'Concluído', 15.00, 'Dinheiro'),
(2, '2023-10-15', 'Enviado', 67.00, 'Cartão de Crédito'),
(3, '2023-11-20', 'Concluído', 42.10, 'Boleto'),
(4, '2023-12-01', 'Concluído', 99.90, 'Pix'),
(5, '2024-01-10', 'Concluído', 34.00, 'Cartão de Crédito'),
(6, '2024-01-15', 'Concluído', 22.50, 'Pix'),
(7, '2024-02-05', 'Enviado', 150.00, 'Cartão de Crédito'),
(8, '2024-02-20', 'Concluído', 12.00, 'Pix'),
(1, '2024-03-01', 'Concluído', 55.00, 'Dinheiro'),
(2, '2024-03-10', 'Processando', 80.00, 'Cartão de Débito'),
(3, '2024-03-15', 'Concluído', 110.00, 'Boleto'),
(4, '2024-03-25', 'Concluído', 25.00, 'Pix'),
-- ERROS TRATÁVEIS:
(999, '2023-01-01', 'Erro', 10.00, 'Desconhecido'), -- Cliente que não existe
(1, '2023-01-01', 'Concluído', 5.00, NULL), -- Pagamento Nulo
(2, '2099-12-31', 'Futuro', 1000.00, 'Pix'), -- Data futura
(3, '2023-05-05', NULL, 20.00, 'Boleto'), -- Status Nulo
(4, '2023-06-06', 'Concluído', -50.00, 'Pix'); -- Valor negativo

-- ==========================================
-- 4. ITENS DO PEDIDO (25 registros)
-- ==========================================
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unit, subtotal) VALUES 
(1, 1, 2, 25.00, 50.00), (2, 6, 10, 2.50, 25.00), (3, 15, 3, 32.00, 96.00),
(4, 2, 2, 15.50, 31.00), (5, 3, 2, 4.80, 9.60), (7, 19, 2, 89.90, 179.80),
(8, 10, 20, 1.50, 30.00), (10, 16, 3, 22.00, 66.00), (12, 20, 1, 65.00, 65.00),
(13, 9, 1, 18.90, 18.90), (14, 11, 2, 6.50, 13.00), (15, 17, 10, 4.50, 45.00),
(17, 1, 2, 25.90, 51.80), (18, 5, 5, 9.50, 47.50), (19, 19, 1, 89.90, 89.90),
(20, 3, 4, 4.80, 19.20), (1, 8, 1, 2.50, 2.50), (2, 10, 5, 1.50, 7.50),
(3, 4, 1, 12.00, 12.00), (21, 1, 1, 10.00, 10.00), (22, 2, 1, 5.00, 5.00),
(23, 24, 1, 9999.00, 9999.00), (24, 10, 1, 1.50, 1.50), (25, 6, 2, 2.50, 5.00),
(10, 12, 1, 3.20, 3.20);
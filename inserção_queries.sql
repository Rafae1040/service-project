-- Inserções de dados e queries 

use projetc_serviços;

INSERT INTO Clientes (idCliente, nome, email, telefone) 
	   VALUES (1, 'João Silva', 'joãosilva@example.com','(11) 1234-5678'),
			  (2, 'Jorge Felisberto', 'jorge@example.com','(11) 1234-6785'),
              (3, 'Pedro Moraes', 'pedrom@example.com','(11) 1243-6578'),
              (4, 'João Silva', 'joãosilva@example.com','(11) 1234-5678');


INSERT INTO Veiculos (idVeiculo, marca, modelo, ano, placa, idCliente) 
	  VALUES (11, 'Fiat','Cronos', '2019', 'EFG3000', 1),
             (22, 'GM','Onix', '2018', 'ETV3561', 2),
             (33, 'Renault','Megane', '2017', 'HHG8596', 3),
             (44, 'Hyundai','HB20', '2020', 'AEE5632', 4);
             
INSERT INTO Servicos (idServico, descricao, preco) 
	   VALUES (1, 'Troca de óleo', 65.00),
              (2, 'Troca do filtro de ar', 75.00),
              (3, 'Troca de freio e pastilhas', 125.00),
              (4, 'Troca de correias', 95.00);
              
INSERT INTO Pecas (idPeca, nome, estoque) 
		VALUES (10, 'Filtro de óleo', 100),
			   (20, 'Filtro de ar', 83),
               (30, 'Freio e pastilhas', 57),
               (40, 'Correias', 63);

INSERT INTO Funcionarios (idFuncionario, nome, cargo) 
         VALUES (01, 'Maria Santos', 'Mecânica'),
				(02, 'João Paulo', 'Mecânico'),
                (03, 'Paula Santos', 'Atendente'),
                (04, 'Jeferson Lopes', 'Comprador');
                
                
INSERT INTO OrdemServicos (idOrdemServico, idCliente, idVeiculo, dataEntrada, dataSaida) 
         VALUES (56, 1, 10, '2023-08-01', '2023-08-05'),
                (57, 2, 20, '2023-08-03', '2023-08-07'),
                (58, 3, 30, '2023-08-05', '2023-08-09'),
                (59, 4, 40, '2023-08-10', '2023-08-15');
                
SELECT * FROM Clientes;
SELECT * FROM Servicos;

SELECT * FROM Veiculos WHERE  ano > 2015;
SELECT * FROM Pecas WHERE estoque >  50;

SELECT descricao, preco, preco * 0.9 AS preco_com_desconto FROM Servicos;

SELECT nome, cargo FROM Funcionarios ORDER BY nome;

SELECT idCliente, COUNT(*) AS num_veiculos FROM Veiculos GROUP BY idCliente HAVING num_veiculos > 0;

SELECT OS.idOrdemServico, C.nome AS cliente, V.modelo AS veiculo, OS.dataEntrada, OS.dataSaida
FROM OrdemServicos OS
JOIN Clientes C ON OS.idCliente = C.idCliente
JOIN Veiculos V ON OS.idVeiculo = V.idVeiculo;






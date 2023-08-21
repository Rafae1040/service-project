-- Criando uma base de dados de Serviços

create database projetc_serviços;

use projetc_serviços;

CREATE TABLE Clientes (
    idCliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email varchar(100),
    telefone VARCHAR(15)
);

CREATE TABLE Veiculos (
    idVeiculo INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano varchar(50),
    placa VARCHAR(50),
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE Servicos (
    idServico INT PRIMARY KEY,
    descricao VARCHAR(200),
    preco DECIMAL(10, 2)
);

CREATE TABLE Pecas (
    idPeca INT PRIMARY KEY,
    nome VARCHAR(100),
    estoque INT
);

CREATE TABLE Funcionarios (
    idFuncionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE OrdemServicos (
    idOrdemServico INT PRIMARY KEY,
    idCliente INT,
    idVeiculo INT,
    dataEntrada DATE,
    dataSaida DATE,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculos(idVeiculo)
);

show tables; 
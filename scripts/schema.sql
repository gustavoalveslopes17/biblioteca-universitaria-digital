CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE Curso (
  id_curso INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  departamento VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
  id_usuario INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  telefone VARCHAR(20),
  tipo ENUM('aluno','professor','funcionario','visitante') NOT NULL,
  status ENUM('ativo','suspenso','penalizado') NOT NULL DEFAULT 'ativo',
  id_curso INT,
  FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Obra (
  id_obra INT PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  isbn VARCHAR(20) UNIQUE,
  formato ENUM('fisico','digital') NOT NULL,
  tipo_material ENUM('livro','artigo','periodico','multimidia') NOT NULL
);

CREATE TABLE Exemplar (
  id_exemplar INT PRIMARY KEY,
  id_obra INT NOT NULL,
  codigo_exemplar VARCHAR(20) NOT NULL UNIQUE,
  disponibilidade ENUM('disponivel','emprestado','manutencao') NOT NULL DEFAULT 'disponivel',
  localizacao VARCHAR(100),
  FOREIGN KEY (id_obra) REFERENCES Obra(id_obra)
);

CREATE TABLE Emprestimo (
  id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_exemplar INT NOT NULL,
  data_retirada DATE NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_exemplar) REFERENCES Exemplar(id_exemplar)
);

CREATE TABLE Reserva (
  id_reserva INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_obra INT NOT NULL,
  status ENUM('ativa','cancelada','atendida') NOT NULL DEFAULT 'ativa',
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_obra) REFERENCES Obra(id_obra)
);

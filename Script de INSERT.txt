-- Inserindo cursos
INSERT INTO Curso (id_curso, nome, departamento) VALUES (1, 'Engenharia de Software', 'Tecnologia');
INSERT INTO Curso (id_curso, nome, departamento) VALUES (2, 'Medicina', 'Saúde');

-- Inserindo usuários
INSERT INTO Usuario (id_usuario, nome, email, telefone, tipo, status, id_curso)
VALUES (1, 'João da Silva', 'joao@uni.edu', '11999999999', 'aluno', 'ativo', 1);

INSERT INTO Usuario (id_usuario, nome, email, telefone, tipo, status, id_curso)
VALUES (2, 'Maria Souza', 'maria@uni.edu', '11888888888', 'professor', 'ativo', 2);

-- Inserindo obras
INSERT INTO Obra (id_obra, titulo, isbn, formato, tipo_material, id_area)
VALUES (1, 'Banco de Dados: Teoria e Prática', '9788575221234', 'fisico', 'livro', 1);

INSERT INTO Obra (id_obra, titulo, isbn, formato, tipo_material, id_area)
VALUES (2, 'Engenharia de Software Moderna', '9788575225678', 'digital', 'livro', 1);

-- Inserindo exemplares
INSERT INTO Exemplar (id_exemplar, id_obra, codigo_exemplar, disponibilidade, localizacao)
VALUES (1, 1, 'EX001', 'disponivel', 'Estante A1');

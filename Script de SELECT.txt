-- Consulta simples com WHERE
SELECT nome, email FROM Usuario WHERE tipo = 'aluno';

-- Ordenação
SELECT titulo, formato FROM Obra ORDER BY titulo ASC;

-- Limite de resultados
SELECT * FROM Usuario LIMIT 5;

-- JOIN entre Usuário e Curso
SELECT u.nome, c.nome AS curso
FROM Usuario u
JOIN Curso c ON u.id_curso = c.id_curso;

-- JOIN entre Empréstimo e Exemplar
SELECT e.id_emprestimo, u.nome, o.titulo, e.data_retirada
FROM Emprestimo e
JOIN Usuario u ON e.id_usuario = u.id_usuario
JOIN Exemplar ex ON e.id_exemplar = ex.id_exemplar
JOIN Obra o ON ex.id_obra = o.id_obra;

-- Atualizar status de usuário
UPDATE Usuario SET status = 'suspenso' WHERE id_usuario = 1;

-- Atualizar disponibilidade de exemplar
UPDATE Exemplar SET disponibilidade = 'emprestado' WHERE id_exemplar = 1;

-- Atualizar email de professor
UPDATE Usuario SET email = 'maria.souza@uni.edu' WHERE id_usuario = 2;

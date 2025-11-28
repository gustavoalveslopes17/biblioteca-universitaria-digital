-- Remover reserva cancelada
DELETE FROM Reserva WHERE status = 'cancelada';

-- Remover usuário visitante
DELETE FROM Usuario WHERE tipo = 'visitante';

-- Remover exemplar danificado
DELETE FROM Exemplar WHERE disponibilidade = 'manutencao';

-- Active: 1794954329974@@127.0.0.1@3306
CREATE TRIGGER criar_log
AFTER INSERT ON alunos
BEGIN 
    INSERT INTO log_alunos (mensagem) VALUES ('Aluno cadastrado: ' || NEW.nome);
END;
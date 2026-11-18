-- Active: 1794954329974@@127.0.0.1@3306
CREATE TRIGGER atualizar_estoque 
 AFTER INSERT ON compras
 BEGIN
    UPDATE produtos 
    SET quantidade = quantidade + NEW.quantidade
    WHERE id = NEW.id_produto;
 END;
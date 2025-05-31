DELIMITER ||
CREATE PROCEDURE sp_Login (
    IN p_usuario VARCHAR(48),
    IN p_clave VARCHAR(48),
    OUT p_mensaje VARCHAR(64),
    OUT p_id INT
)
READS SQL DATA
BEGIN
      SET p_id = NULL; 
      SELECT cod_usua INTO p_id FROM tb_usuarios WHERE usr_usua = p_usuario AND 
      cla_usua = p_clave;
       
       IF (p_id IS NULL) THEN
           SET p_mensaje = 'wrong password';
       ELSE
           SET p_mensaje = 'Success';
       END IF;
END;
||
DELIMITER ;

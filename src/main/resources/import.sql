-- INSERT INTO user(id,enabled,login,password,roles) VALUES (1, 1, 'a', 'aa', 'USER');
-- INSERT INTO user VALUES (2, 1, 'b', 'bb', 'USER,ADMIN');
INSERT INTO user(id,enabled,login,password,roles) VALUES (1, 1, 'a', '$2a$04$N78IYN6VzrWZzpsy6Xvz2uCdUm7Su9FDpAqhXjAcSzCgreVM2sUnC', 'USER');
INSERT INTO user VALUES (2, 1, 'b', '$2a$04$NwYuA6rd/UbCs3H8mntvPuqyFuUsX8sTKI1WDYwqrXhncXWIklscW', 'USER,ADMIN');
INSERT INTO ruta (id, importe_total, creador_id) VALUES (1, 100, 2);
INSERT INTO visita (direccion, importe_estimado, importe_final, terminada, detalles, creador_id, ruta_id) VALUES ('Facultad de informatica UCM',10,10,true,'Salir a concretar los acuerdos de finanzas',2,1);
INSERT INTO evento (direccion, precio, info, creador_id, ruta_id) VALUES ('Facultad de informatica UCM',10,'Salir a concretar los acuerdos de finanzas',2,1);
INSERT INTO visita (direccion, importe_estimado, importe_final, terminada, detalles, creador_id) VALUES ('Facultad de informatica UCM',10,10,true,'Salir a concretar los acuerdos de finanzas',2);
INSERT INTO evento (direccion, precio, info, creador_id) VALUES ('Facultad de informatica UPM',10,'Salir a concretar los acuerdos de finanzas',2);
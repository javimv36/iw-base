-- INSERT INTO user(id,enabled,login,password,roles) VALUES (1, 1, 'a', 'aa', 'USER');
-- INSERT INTO user VALUES (2, 1, 'b', 'bb', 'USER,ADMIN');
INSERT INTO user(id,enabled,login,password,roles) VALUES (1, 1, 'a', '$2a$04$N78IYN6VzrWZzpsy6Xvz2uCdUm7Su9FDpAqhXjAcSzCgreVM2sUnC', 'USER');
INSERT INTO user VALUES (2, 1, 'b', '$2a$04$NwYuA6rd/UbCs3H8mntvPuqyFuUsX8sTKI1WDYwqrXhncXWIklscW', 'USER,ADMIN');
INSERT INTO visita VALUES (
    1,
    'Reino de los Elfos', 
    '12-10-5002', 
    '12:00', 
    '12:10', 
    'Hablar con el rey elfo para cerrar el acuerdo con los Ainurs', 
    10000, 
    5, 
    666, 
    'Eldelbar', 
    'Al salir un reno se comporto mal', 
    'visita', 
    false, 
    1, 
    'a'
);
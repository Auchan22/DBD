INSERT INTO club 
VALUES (1234, "Estrella de Berisso", 1921, (SELECT codigoCiudad FROM ciudad WHERE nombre = 'Berisso' ))
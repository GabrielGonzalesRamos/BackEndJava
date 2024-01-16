CREATE TABLE IF NOT EXISTS tb_lectores (
    lector_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tb_autores (
    autor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tb_categorias(
    categoria_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tb_libros(
    isbn VARCHAR(30) PRIMARY KEY,
    titulo VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS tb_prestamos(
    prestamo_id SERIAL PRIMARY KEY,
    fecha_prestamo DATE,
    fecha_devolucion_esperada DATE,
    lector_id INT,
    isbn VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT fk_many_libro_prestamo FOREIGN KEY(isbn) REFERENCES tb_libros(isbn)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tb_autores_libros(
    autor_id INT,
    isbn VARCHAR(30),
    PRIMARY KEY(autor_id, isbn),
    CONSTRAINT fk_many_autor_libro FOREIGN KEY(autor_id) REFERENCES tb_autores (autor_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_many_libro_autor FOREIGN KEY(isbn) REFERENCES tb_libros (isbn)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tb_categorias_libros(
    categoria_id INT,
    isbn VARCHAR(30),
    PRIMARY KEY(categoria_id, isbn),
    CONSTRAINT fk_many_categoria_libro FOREIGN KEY(categoria_id) REFERENCES tb_categorias (categoria_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_many_libro_categoria FOREIGN KEY(isbn) REFERENCES tb_libros (isbn)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);



INSERT INTO tb_lectores(nombre) 
    VALUES
        ('Francisca Mosquera Godoy'),
        ('Emilio Medina González'),
        ('Diana Briseño Sandoval'),
        ('Esteban Chacón Velasco'),
        ('Abelardo Lara Rodriguez');

INSERT INTO tb_autores(nombre) 
    VALUES
        ('autor 1'),
        ('autor 2'),
        ('autor 3'),
        ('autor 4'),
        ('autor 5');
INSERT INTO tb_libros (isbn, titulo) 
    VALUES
        ('203350931-1', 'Maternal Halfbrothers (Braca po materi)'),
        ('430147632-6', 'Two Guys Talkin'' About Girls'),
        ('673936854-6', 'Timecrimes (Cronocrímenes, Los)'),
        ('723017098-2', 'Jönssonligan dyker upp igen'),
        ('240362262-1', 'Modify');

INSERT INTO tb_categorias (nombre)
    VALUES
        ('Comics'),
        ('Autobiograficos'),
        ('Cientificos'),
        ('Aventura'),
        ('Cuentos');

INSERT INTO tb_prestamos (fecha_prestamo, fecha_devolucion_esperada, lector_id, isbn) 
    VALUES
        ('10/9/2023', '10/9/2023', 1, '203350931-1'),
        ('7/13/2023', '7/13/2023', 1, '430147632-6'),
        ('4/24/2023', '4/24/2023', 1, '673936854-6'),
        ('4/27/2023', '4/27/2023', 5, '723017098-2'),
        ('6/9/2023', '6/9/2023', 2, '240362262-1');

INSERT INTO tb_autores_libros (autor_id, isbn) 
    VALUES
        (1, '203350931-1'),
        (2, '430147632-6'),
        (3, '673936854-6'),
        (4, '723017098-2'),
        (5, '240362262-1');
INSERT INTO tb_categorias_libros (categoria_id, isbn) 
    VALUES
        (1, '203350931-1'),
        (2, '430147632-6'),
        (3, '673936854-6'),
        (4, '723017098-2'),
        (5, '240362262-1');
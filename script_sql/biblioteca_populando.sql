-- Populando Entidade autor: o id_autor é a chave primaria.Nesta entidade está registrado nome do autor, nacionalidade,data de nascimento e genero do escritor.
INSERT INTO autor (id_autor, nome_autor, nacionalidade, data_nascimento,genero_literario) values
	(1,'Machado de Assis', 'Brasileiro','1839-06-21', 'Romantismo'),
     (2,'José de Alencar', 'Brasileiro', '1829-02-11','Romantismo'),
	(3,'Castro Alves', 'Brasileiro', '1847-09-28', ' Romantismo'),
	(4,'Almeida Garrett' , 'Português', '1799-01-15' , 'Romantismo'),
	(5,'Álvares de Azevedo' , 'Brasileiro', '1831-04-05' , 'Romantismo');
    -- Final entidade autor

    -- Entidade editora
    -- O id_editora é a chave primaria nesse caso não pus, por que ele está auto-incremente.Nesta entidade está registrado o nome da editora,endereço,país,site,rede social.

    INSERT INTO editora (nome_editora, endereco_editora, pais_editora, website, rede_social) values
    ('Abril','Rua Bandeira Paulista, 702,','Brasil','www.abril.com.br','@abril'),
    ('Editora Intrínseca', 'Av. Presidente Vargas, 1265,', 'Brasil', 'www.intrinseca.com.br', '@intrinseca'),
	('Editora Record', 'Rua Argentina, 171,', 'Brasil', 'www.editorarecord.com.br', '@editorarecord'),
	('Editora Rocco', 'Rua Anfilófio de Carvalho, 29,', 'Brasil', 'www.editorarocco.com.br', '@editorarocco'),
	('Editora Sextante', 'Rua Voluntários da Pátria, 45,', 'Brasil', 'www.esextante.com.br', '@esextante');
    -- Final Entidade editora

    -- Entidade emprestimo
    -- O id_emprestimo é a chave primaria nesse caso não pus por que ele está auto-incremente.Nesta entidade está registrado cpf data de emprestimo e dedoluçao os null são as chaves estrangeiras que ligam as entidades.
    
    INSERT INTO emprestimo (id_livro, id_usuario, cpf, data_emprestimo, data_devolucao) values
    (null, null,'06817392276','2023-02-12','2023-02-20'),
    (null, null, '12345678901', '2023-07-01', '2023-07-10'),
	(null, null, '98765432109', '2023-09-15', '2023-09-25'),
	(null, null, '55556666777', '2023-11-05', '2023-11-12'),
	(null, null, '88887777666', '2023-12-20', '2023-12-31');
    -- final Entidade emprestimo

    -- Entidade Livro
    -- O id_livro é a chave primaria nesse caso não pus por que ele está auto-incremente e o null nesse caso é a chave estrangeira que liga emprestimo a livro.Nesta Entidade está registrado o autor, titulo, ano de publicaçao e o id da editora.
    
    INSERT INTO livro (autor, titulo, genero, ano_publicacao, editora_id) values
    ('Machado de Assis','memorias postomas de bras cubas', 'romance', '1880-03-11', null),
    ('Gabriel Garcia Marquez', 'One Hundred Years of Solitude', 'novel', '1967-05-30', null),
	('Jane Austen', 'Pride and Prejudice', 'novel', '1813-01-28', null),
	('George Orwell', '1984', 'dystopian fiction', '1949-06-08', null),
	('J.K. Rowling', 'Harry Potter and the Philosopher s Stone', 'fantasy', '1997-06-26',null);

    -- final Entidade livro

    -- Entidade Livro_autor

    -- O livro_autor: o id_livro é a chave primaria nesse caso não pus por que ele está auto-incremente.Esta registrado null,null pois é uma tabela de coneção entre as outras duas,livro e autor.
    
    INSERT INTO livro_autor (id_autor, id_livro) values
    (null,null),
    (null,null),
    (null,null),
    (null,null),
    (null,null);
    -- final entidade livro_autor

    -- Entidade Usuario

    -- O id_usuario é a chave primaria nesse caso não pus por que ele está auto-incremente.Está registrado nome do usuario,cpf,telefone,email e endereço.
    
    INSERT INTO usuario (nome, cpf, telefone, email, endereco) values
    ('Renato jose', '87897856435','41998544578','renatojose@gmail.com', 'rua das cabritas 45'),
    ('Ana Silva', '56789012345', '11987654321', 'ana.silva@email.com', 'Avenida das Flores, 123'),
	('Pedro Santos', '34567890123', '21987654321', 'pedro.santos@email.com', 'Rua dos Pinheiros, 567'),
	('Maria Oliveira', '12345678901', '31987654321', 'maria.oliveira@email.com', 'Travessa das Pedras, 789'),
	('Carlos Pereira', '98765432109', '41987654321', 'carlos.pereira@email.com', 'Praça das Artes, 101');
    -- Final entidade Usuario.
    
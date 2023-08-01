-- Nesse link tem o codigo do Db Diagram.io onde iniciou a modelagem
-- https://dbdiagram.io/d/64c5fc6f02bd1c4a5eeba8a2

-- Logo abaixo inicia a modelagem das entidades.
CREATE database emerson_biblioteca;
USE emerson_biblioteca;
-- Entidade Usuario
CREATE TABLE `usuario` (
  `id_usuario` Int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(50),
  `cpf` varchar(11),
  `telefone` varchar(15),
  `email` varchar(50),
  `endereco` varchar(60)
);
-- Entidade Emprestimo
CREATE TABLE `emprestimo` (
  `id_emprestimo` int PRIMARY KEY AUTO_INCREMENT,
  `id_livro` int,
  `id_usuario` int,
  `cpf` varchar(255),
  `data_emprestimo` date,
  `data_devolucao` date
);
-- Entidade Livro
CREATE TABLE `livro` (
  `id_livro` int PRIMARY KEY AUTO_INCREMENT,
  `autor` varchar(220),
  `titulo` varchar(150),
  `genero` varchar(150),
  `ano_publicacao` date,
  `editora_id` int
);
-- Entidade Autor
CREATE TABLE `autor` (
  `id_autor` int PRIMARY KEY AUTO_INCREMENT,
  `nome_autor` varchar(250),
  `nacionalidade` varchar(100),
  `data_nascimento` date,
  `genero_literario` varchar(100)
);
-- Entidade Livro_Autor
CREATE TABLE `livro_autor` (
  `id_livro_autor` int PRIMARY KEY AUTO_INCREMENT,
  `id_autor` int,
  `id_livro` int
);
-- Entidade editora

CREATE TABLE `editora` (
  `id_editora` int PRIMARY KEY AUTO_INCREMENT,
  `nome_editora` varchar(200),
  `endereco_editora` varchar(200),
  `pais_editora` varchar(100),
  `website` varchar(200),
  `rede_social` varchar(200)
);
-- Aqui encontra-se as chaves estrangeiras. Codigos que ligam uma tabela a outra.

ALTER TABLE `emprestimo` ADD FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`);

ALTER TABLE `emprestimo` ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

ALTER TABLE `livro` ADD FOREIGN KEY (`editora_id`) REFERENCES `editora` (`id_editora`);

ALTER TABLE `livro_autor` ADD FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`);

ALTER TABLE `livro_autor` ADD FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`);

-- No proximo arquivo voce encontrará a população das Entidades onde encontra-se as informações para as tabelas.
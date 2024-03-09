-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/03/2024 às 20:58
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mangás`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `capitulos`
--

CREATE TABLE `capitulos` (
  `ID` int(11) NOT NULL,
  `Mangas_ID` int(11) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Titulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `capitulos`
--

INSERT INTO `capitulos` (`ID`, `Mangas_ID`, `Numero`, `Titulo`) VALUES
(1, 1, 1, 'O Garoto que Vira Lenda'),
(2, 1, 2, 'O Retorno de Sasuke'),
(3, 2, 1, 'A Grande Jornada Começa'),
(4, 2, 2, 'A Espada do Caçador'),
(5, 3, 1, 'O Caderno da Morte'),
(6, 3, 2, 'O Detetive Chamado L'),
(7, 1, 3, 'A Prova de Sakura'),
(8, 1, 4, 'O Treinamento de Kakashi'),
(9, 2, 3, 'A Ilha dos Piratas'),
(10, 2, 4, 'A Batalha Final'),
(11, 3, 3, 'A Morte de um Criminoso'),
(12, 3, 4, 'O Duelo entre Gênios'),
(13, 4, 5, 'O Novo Amigo'),
(14, 4, 6, 'O Festival Cultural'),
(15, 5, 3, 'A Descoberta'),
(16, 5, 4, 'O Concurso de Cosplay');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mangas`
--

CREATE TABLE `mangas` (
  `ID` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Sinopse` text DEFAULT NULL,
  `AnoLancamento` int(11) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Volumes` int(11) DEFAULT NULL,
  `Capitulos` int(11) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mangas`
--

INSERT INTO `mangas` (`ID`, `Titulo`, `Autor`, `Genero`, `Sinopse`, `AnoLancamento`, `Editora`, `Volumes`, `Capitulos`, `Status`, `usuario_id`) VALUES
(1, 'Naruto', 'Masashi Kishimoto', 'Ação, Aventura', 'A história acompanha Naruto, um jovem ninja determinado a se tornar o Hokage, o ninja chefe de sua aldeia, e suas aventuras para proteger sua vila e alcançar seus sonhos.', 2000, 'Shueisha', 72, 700, 'Concluído', NULL),
(2, 'One Piece', 'Eiichiro Oda', 'Aventura, Ação', 'Monkey D. Luffy parte em busca do tesouro One Piece, a fim de se tornar o próximo Rei dos Piratas. Ele reúne uma tripulação diversificada e enfrenta inúmeros desafios em sua jornada.', 1997, 'Shueisha', 98, 1086, 'Em andamento', NULL),
(3, 'Death Note', 'Tsugumi Ohba', 'Mistério, Suspense', 'Light Yagami encontra um caderno sobrenatural chamado Death Note, que lhe dá o poder de matar qualquer pessoa cujo nome seja escrito nele. Ele começa a usá-lo para \"limpar\" o mundo de criminosos, mas logo atrai a atenção de um detetive habilidoso chamado L.', 2003, 'Shueisha', 12, 108, 'Concluído', NULL),
(4, 'Komi-san wa, Komyushou desu', 'Tomohito Oda', 'Comédia, Romance', 'A história segue a vida de Komi-san, uma estudante do ensino médio que tem dificuldade em se comunicar com os outros devido à sua ansiedade social. Ela se esforça para fazer 100 amigos.', 2016, 'Shogakukan', 23, 300, 'Em andamento', NULL),
(5, 'Sono Bisque Doll wa Koi o Suru', 'Shinichi Fukuda', 'Comédia, Romance', 'A história segue a vida de Wakana Gojou, um estudante do ensino médio que se interessa por fazer bonecas. Ele conhece a talentosa artisan-cosplayer Marin Kitagawa e começa a desenvolver sentimentos por ela.', 2018, 'Media Factory', 9, 45, 'Em andamento', NULL),
(6, 'Kobayashi-san Chi no Maid Dragon', 'Coolkyoushinja', 'Comédia, Fantasia', 'Kobayashi é uma mulher solitária que acaba conhecendo Tohru, uma dragão transformada em uma empregada doméstica. A história segue as travessuras e a convivência de Kobayashi e Tohru.', 2013, 'Futabasha', 10, 98, 'Em andamento', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `personagens`
--

CREATE TABLE `personagens` (
  `ID` int(11) NOT NULL,
  `Mangas_ID` int(11) DEFAULT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Papel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `personagens`
--

INSERT INTO `personagens` (`ID`, `Mangas_ID`, `Nome`, `Papel`) VALUES
(1, 1, 'Naruto Uzumaki', 'Protagonista'),
(2, 1, 'Sasuke Uchiha', 'Antagonista'),
(3, 2, 'Monkey D. Luffy', 'Protagonista'),
(4, 2, 'Roronoa Zoro', 'Co-Protagonista'),
(5, 3, 'Light Yagami', 'Protagonista'),
(6, 3, 'L', 'Antagonista'),
(7, 1, 'Sakura Haruno', 'Co-Protagonista'),
(8, 1, 'Kakashi Hatake', 'Mentor'),
(9, 2, 'Nami', 'Co-Protagonista'),
(10, 2, 'Trafalgar D. Water Law', 'Antagonista'),
(11, 3, 'Misa Amane', 'Secundário'),
(12, 3, 'Ryuk', 'Co-Protagonista'),
(13, 4, 'Komi Shouko', 'Protagonista'),
(14, 4, 'Tadano Hitohito', 'Co-Protagonista'),
(15, 5, 'Wakana Gojou', 'Protagonista'),
(16, 5, 'Marin Kitagawa', 'Co-Protagonista'),
(17, 6, 'Kobayashi', 'Protagonista'),
(18, 6, 'Tohru', 'Co-Protagonista'),
(19, 4, 'Osana Najimi', 'Secundário'),
(20, 5, 'Ryouko Katakura', 'Secundário'),
(21, 6, 'Elma', 'Secundário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nome`, `Senha`, `Email`, `DataNascimento`, `genero`, `telefone`) VALUES
(1, 'João', '123456', 'joao@example.com', '1990-01-01', NULL, '(69)99999-6444'),
(2, 'Maria', 'abcdef', 'maria@example.com', '1992-03-15', NULL, '(69)99999-7777'),
(3, 'Pedro', 'secretpass', 'pedro@example.com', '1985-07-10', NULL, '(69)99799-7778'),
(4, 'Ana', 'user123', 'ana@example.com', '1998-12-27', NULL, ''),
(5, 'Lucas', 'lucaspass', 'lucas@example.com', '1991-06-05', NULL, ''),
(6, 'Mariana', 'amanda2023', 'amanda@example.com', '1995-09-18', NULL, ''),
(7, 'Gustavo', 'rodrigo#567', 'rodrigo@example.com', '1993-02-22', NULL, ''),
(8, 'Carolina', 'camila_pass', 'camila@example.com', '1997-11-04', NULL, ''),
(9, 'Rafael', 'diego@123', 'diego@example.com', '1994-07-29', NULL, ''),
(10, 'Juliana', 'nat1234', 'natalia@example.com', '1996-04-12', NULL, ''),
(11, 'Fernando', 'bruno_pass', 'bruno@example.com', '1992-08-15', NULL, ''),
(12, 'Amanda', 'isabela123', 'isabela@example.com', '1999-03-07', NULL, ''),
(13, 'Rodrigo', 'henrique2022', 'henrique@example.com', '1997-01-25', NULL, ''),
(14, 'Camila', 'larissa@456', 'larissa@example.com', '1993-10-30', NULL, ''),
(15, 'Diego', 'user15pass', 'usuario15@example.com', '1995-06-02', NULL, ''),
(16, 'Natália', 'user16pass', 'usuario16@example.com', '1998-09-20', NULL, ''),
(17, 'Bruno', 'user17pass', 'usuario17@example.com', '1994-12-12', NULL, ''),
(18, 'Isabela', 'user18pass', 'usuario18@example.com', '1996-11-08', NULL, ''),
(19, 'Henrique', 'user19pass', 'usuario19@example.com', '1991-07-21', NULL, ''),
(20, 'Larissa', 'user20pass', 'usuario20@example.com', '1999-04-04', NULL, '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Mangas_ID` (`Mangas_ID`);

--
-- Índices de tabela `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `personagens`
--
ALTER TABLE `personagens`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Mangas_ID` (`Mangas_ID`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `mangas`
--
ALTER TABLE `mangas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `personagens`
--
ALTER TABLE `personagens`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `capitulos_ibfk_1` FOREIGN KEY (`Mangas_ID`) REFERENCES `mangas` (`ID`);

--
-- Restrições para tabelas `mangas`
--
ALTER TABLE `mangas`
  ADD CONSTRAINT `mangas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Restrições para tabelas `personagens`
--
ALTER TABLE `personagens`
  ADD CONSTRAINT `personagens_ibfk_1` FOREIGN KEY (`Mangas_ID`) REFERENCES `mangas` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

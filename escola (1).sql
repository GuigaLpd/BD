-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/08/2025 às 06:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblalunos`
--

CREATE TABLE `tblalunos` (
  `codaluno` int(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `nascimento` varchar(10) NOT NULL,
  `pai` varchar(50) NOT NULL,
  `mae` varchar(50) NOT NULL,
  `responsavel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblalunos`
--

INSERT INTO `tblalunos` (`codaluno`, `nome`, `endereco`, `telefone`, `nascimento`, `pai`, `mae`, `responsavel`) VALUES
(1, 'Guilherme', 'Rua Ventre Sombrio', '11982271969', '01/08/2008', 'Wanderley', 'Cassia', 'Mae'),
(2, 'Matheus', 'Rua Helena Tavares', '11942209606', '12/12/2005', 'Paulo', 'Vera', 'Pai'),
(3, 'Jairo', 'Rua engenhópolis', '11964435480', '23/04/1998', 'Ronaldo', 'Cecília', 'Mae'),
(4, 'Wellington', 'Rua João Bosco', '11973634927', '12/02/1993', 'Roberto', 'Maria', 'Avós'),
(5, 'Vittoria', 'Rua Marim dos Caetés', '1198712290', '24/06/2001', 'Junior', 'Stefanni', 'Pai'),
(6, 'Kemilly', 'Rua Alvaro Monteiro', '11956008121', '08/06/2007', 'Airton', 'Valeria', 'Tia'),
(7, 'Lucas', 'Rua Pinheiros Finos', '11908756343', '09/07/1995', 'Icaro', 'Celia', 'Mae'),
(8, 'Giovanna', 'Rua Luiz dos Reis', '11955071638', '07/08/2003', 'Vagner', 'Renata', 'Pai'),
(9, 'Ana', 'Rua São Pedro de Alcantra', '11962843256', '25/11/1999', 'Otavio', 'Natalia', 'Mae'),
(10, 'Arthur', 'Rua Alves Monte', '11990225672', '07/06/2009', 'Pedro', 'Lais', 'Mae'),
(11, 'Daniel', 'Rua Martim Lopes', '11909643212', 'Rua Teresi', 'Diego', 'Marta', 'Avó'),
(12, 'Reinaldo', 'Rua São Vicente', '11971128700', '31/08/2010', 'Sidney', 'Kimberly', 'Tio'),
(13, 'Jose', 'Rua Folhetim', '11912347544', '09/01/2006', 'Marcos', 'Renata', 'Pai'),
(14, 'Gabriel', 'Rua dos Ventos', '11992175410', '06/05/2004', 'Silvio', 'Sara', 'Pai'),
(15, 'João', 'Rua Capatio', '11992266273', '26/08/2008', 'Samuel', 'Felicia', 'Pai');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcursos`
--

CREATE TABLE `tblcursos` (
  `codCurso` int(50) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `codProfessor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblcursos`
--

INSERT INTO `tblcursos` (`codCurso`, `nomeCurso`, `codProfessor`) VALUES
(11, 'Informatica', 1),
(22, 'Engenharia Civil', 2),
(33, 'Medicina', 3),
(44, 'Engenharia da Computacao', 4),
(55, 'Gastronomia', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblnotas`
--

CREATE TABLE `tblnotas` (
  `codaluno` int(50) NOT NULL,
  `codcurso` int(50) NOT NULL,
  `nota` int(2) NOT NULL,
  `ano` int(4) NOT NULL,
  `bimestre` varchar(2) NOT NULL,
  `observacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblnotas`
--

INSERT INTO `tblnotas` (`codaluno`, `codcurso`, `nota`, `ano`, `bimestre`, `observacao`) VALUES
(1, 11, 10, 2025, '2°', 'Bom comportamento'),
(2, 55, 7, 2024, '1°', 'Participa bem da aula'),
(3, 11, 4, 2025, '3°', 'Muita conversa durante a aula'),
(4, 22, 9, 2024, '1°', 'Precisa melhorar nas atividades'),
(5, 33, 9, 2025, '1°', ' '),
(6, 11, 6, 2024, '3°', 'Se esforça'),
(7, 44, 5, 2025, '3°', ' '),
(8, 44, 7, 2023, '2°', 'Desrespeito durante a aula'),
(9, 33, 2, 2025, '3°', 'Ausente na maioria das aulas'),
(10, 11, 8, 2025, '3°', 'Participa da aula'),
(11, 22, 10, 2025, '1°', ' '),
(12, 55, 0, 2025, '1°', 'Nunca compareceu a aula'),
(13, 22, 7, 2025, '2°', ' '),
(14, 55, 9, 2024, '3°', 'Mal comportamento'),
(15, 33, 4, 2024, '1°', ' ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblprofessor`
--

CREATE TABLE `tblprofessor` (
  `codProfessor` int(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblprofessor`
--

INSERT INTO `tblprofessor` (`codProfessor`, `nome`, `endereco`) VALUES
(1, 'Rebeca Caravalho', 'Rua Santo Antonio, 279'),
(2, 'Salomao Santana', 'Rua Passos Profundos, 91'),
(3, 'Palloma Dias', 'Rua Estevão Almeida, 221'),
(4, 'Wagner Franca', 'Rua Rei dos Palmos, 60'),
(5, 'Arno Costa', 'Rua Messias Belavista, 84'),
(6, 'Carlos Xavier', 'Rua Desenhos Ocultos, 80\r\n');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tblalunos`
--
ALTER TABLE `tblalunos`
  ADD PRIMARY KEY (`codaluno`);

--
-- Índices de tabela `tblcursos`
--
ALTER TABLE `tblcursos`
  ADD PRIMARY KEY (`codCurso`);

--
-- Índices de tabela `tblprofessor`
--
ALTER TABLE `tblprofessor`
  ADD PRIMARY KEY (`codProfessor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--Duas tabelas principais: users e login_attempts

--Tabela users
--Esta tabela armazenará as informações dos usuários registrados

CREATE DATABASE user_management;

USE user_management;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Tabela login_attempts
--Esta tabela registrará as tentativas de login para monitoramento e segurança

USE user_management;

CREATE TABLE login_attempts (
    attempt_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    attempt_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    success BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--Script para Inserir 100 Usuários na Tabela users

USE user_management;

-- Inserir 100 usuários
INSERT INTO users (email, password) VALUES
('user1@example.com', 'password1'),
('user2@example.com', 'password2'),
('user3@example.com', 'password3'),
('user4@example.com', 'password4'),
('user5@example.com', 'password5'),
('user6@example.com', 'password6'),
('user7@example.com', 'password7'),
('user8@example.com', 'password8'),
('user9@example.com', 'password9'),
('user10@example.com', 'password10'),
('user11@example.com', 'password11'),
('user12@example.com', 'password12'),
('user13@example.com', 'password13'),
('user14@example.com', 'password14'),
('user15@example.com', 'password15'),
('user16@example.com', 'password16'),
('user17@example.com', 'password17'),
('user18@example.com', 'password18'),
('user19@example.com', 'password19'),
('user20@example.com', 'password20'),
('user21@example.com', 'password21'),
('user22@example.com', 'password22'),
('user23@example.com', 'password23'),
('user24@example.com', 'password24'),
('user25@example.com', 'password25'),
('user26@example.com', 'password26'),
('user27@example.com', 'password27'),
('user28@example.com', 'password28'),
('user29@example.com', 'password29'),
('user30@example.com', 'password30'),
('user31@example.com', 'password31'),
('user32@example.com', 'password32'),
('user33@example.com', 'password33'),
('user34@example.com', 'password34'),
('user35@example.com', 'password35'),
('user36@example.com', 'password36'),
('user37@example.com', 'password37'),
('user38@example.com', 'password38'),
('user39@example.com', 'password39'),
('user40@example.com', 'password40'),
('user41@example.com', 'password41'),
('user42@example.com', 'password42'),
('user43@example.com', 'password43'),
('user44@example.com', 'password44'),
('user45@example.com', 'password45'),
('user46@example.com', 'password46'),
('user47@example.com', 'password47'),
('user48@example.com', 'password48'),
('user49@example.com', 'password49'),
('user50@example.com', 'password50'),
('user51@example.com', 'password51'),
('user52@example.com', 'password52'),
('user53@example.com', 'password53'),
('user54@example.com', 'password54'),
('user55@example.com', 'password55'),
('user56@example.com', 'password56'),
('user57@example.com', 'password57'),
('user58@example.com', 'password58'),
('user59@example.com', 'password59'),
('user60@example.com', 'password60'),
('user61@example.com', 'password61'),
('user62@example.com', 'password62'),
('user63@example.com', 'password63'),
('user64@example.com', 'password64'),
('user65@example.com', 'password65'),
('user66@example.com', 'password66'),
('user67@example.com', 'password67'),
('user68@example.com', 'password68'),
('user69@example.com', 'password69'),
('user70@example.com', 'password70'),
('user71@example.com', 'password71'),
('user72@example.com', 'password72'),
('user73@example.com', 'password73'),
('user74@example.com', 'password74'),
('user75@example.com', 'password75'),
('user76@example.com', 'password76'),
('user77@example.com', 'password77'),
('user78@example.com', 'password78'),
('user79@example.com', 'password79'),
('user80@example.com', 'password80'),
('user81@example.com', 'password81'),
('user82@example.com', 'password82'),
('user83@example.com', 'password83'),
('user84@example.com', 'password84'),
('user85@example.com', 'password85'),
('user86@example.com', 'password86'),
('user87@example.com', 'password87'),
('user88@example.com', 'password88'),
('user89@example.com', 'password89'),
('user90@example.com', 'password90'),
('user91@example.com', 'password91'),
('user92@example.com', 'password92'),
('user93@example.com', 'password93'),
('user94@example.com', 'password94'),
('user95@example.com', 'password95'),
('user96@example.com', 'password96'),
('user97@example.com', 'password97'),
('user98@example.com', 'password98'),
('user99@example.com', 'password99'),
('user100@example.com', 'password100');

--Tabela mentores

CREATE TABLE mentores (
    mentor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    especialidade VARCHAR(255),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--Tabela mentorados

CREATE TABLE mentorados (
    mentorado_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    objetivo VARCHAR(255),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mentor_id INT,
    user_id INT,
    FOREIGN KEY (mentor_id) REFERENCES mentores(mentor_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--Inserir Dados na Tabela mentores

INSERT INTO mentores (nome, email, especialidade, user_id) VALUES
('Mentor 1', 'mentor1@example.com', 'Desenvolvimento Web', 1),
('Mentor 2', 'mentor2@example.com', 'Ciência de Dados', 2),
('Mentor 3', 'mentor3@example.com', 'Desenvolvimento Móvel', 3),
('Mentor 4', 'mentor4@example.com', 'Inteligência Artificial', 4),
('Mentor 5', 'mentor5@example.com', 'DevOps', 5);

--Inserir Dados na Tabela mentorados

INSERT INTO mentorados (nome, email, objetivo, mentor_id, user_id) VALUES
('Mentorado 1', 'mentorado1@example.com', 'Aprender HTML e CSS', 1, 6),
('Mentorado 2', 'mentorado2@example.com', 'Análise de Dados', 2, 7),
('Mentorado 3', 'mentorado3@example.com', 'Desenvolvimento de Apps', 3, 8),
('Mentorado 4', 'mentorado4@example.com', 'Aprender Machine Learning', 4, 9),
('Mentorado 5', 'mentorado5@example.com', 'Configuração de Servidores', 5, 10);

--Criando a Tabela busca

CREATE TABLE busca (
    busca_id INT AUTO_INCREMENT,
    termo VARCHAR(255) NOT NULL,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_id INT,
    PRIMARY KEY (busca_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);



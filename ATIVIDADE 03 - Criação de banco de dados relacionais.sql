CREATE DATABASE HospitalDB;

USE HospitalDB;

CREATE TABLE Medico 
(
	CRM VARCHAR(12) UNIQUE NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Especialidade VARCHAR(50) NOT NULL,
    PRIMARY KEY(CRM)
);

CREATE TABLE Paciente
(
	CPF VARCHAR(11) UNIQUE NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    PRIMARY KEY(CPF)
);

CREATE TABLE Atendimento
(
	Codigo_Atendimento INT NOT NULL AUTO_INCREMENT,
    Data DATE NOT NULL,
    Hora TIME NOT NULL,
    Diagnostico VARCHAR(50) NOT NULL,
    Valor_Consulta DECIMAL(8,2) NOT NULL,
    CRM VARCHAR(12) NOT NULL,
    CPF VARCHAR(11) NOT NULL,
    PRIMARY KEY(Codigo_Atendimento),
    FOREIGN KEY(CRM) REFERENCES Medico(CRM),
    FOREIGN KEY(CPF) REFERENCES Paciente(CPF)
);

-- Dados para a tabela Medico
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('26814-88', 'Srta. Brenda Souza', 'Ginecologia');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('37104-75', 'Pedro Henrique Castro', 'Clínica Médica');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('74269-14', 'João Gabriel Pinto', 'Endocrinologia');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('46822-07', 'Anthony Gabriel Cunha', 'Dermatologia');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('57155-58', 'Kamilly Lima', 'Dermatologia');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('02022-90', 'Dr. Cauã Souza', 'Ortopedia');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('82555-03', 'Noah Mendonça', 'Clínica Médica');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('05660-82', 'Anna Liz Novais', 'Psiquiatria');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('14102-08', 'Marcelo Marques', 'Clínica Médica');
INSERT INTO Medico (CRM, Nome, Especialidade) VALUES ('47676-17', 'Julia Costa', 'Ortopedia');

-- Dados para a tabela Paciente
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('94832561782', 'Sr. Thomas Sampaio', '1941-09-11', '51 4230 3181', 'Praia de Pastor, 25, Xodo-Marize, 02876031 Peixoto / AM');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('49256387182', 'Thomas Moraes', '1971-07-28', '61 6123-3999', 'Favela Ramos, 804, Alto Das Antenas, 41722-092 Ramos / MS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('74395621864', 'Gael Melo', '1935-08-24', '+55 (021) 4130 9400', 'Esplanada Benicio Rodrigues, 89, Etelvina Carneiro, 06263-885 Cassiano do Campo / CE');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('59704823665', 'Maria Cecília Dias', '1995-12-25', '+55 11 7799-1415', 'Pátio Siqueira, 77, Vila Calafate, 79180-877 Barbosa / SC');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('21745386955', 'Juliana Pires', '2002-02-12', '+55 51 4615 0468', 'Rodovia de Lima, 4, Vila Maria, 22752-823 Duarte Paulista / RS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('16037824940', 'Aurora Rezende', '1984-06-02', '(051) 3274-9683', 'Avenida de Cavalcante, 39, Cdi Jatoba, 22608-103 Sales / AL');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('78620459120', 'Heitor Garcia', '2011-07-21', '+55 21 7819 9816', 'Pátio Agatha Marques, 9, Caetano Furquim, 00617978 Nascimento / SC');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('24507986338', 'Lívia da Paz', '1941-02-22', '(071) 9578-7357', 'Residencial de das Neves, 25, Canaa, 50966902 Silva de Peixoto / PI');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('90346175801', 'Ayla Machado', '1956-07-17', '+55 (084) 3637 0151', 'Conjunto de Oliveira, 816, Cidade Nova, 48477-154 Cavalcante de Farias / GO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('72950861377', 'Yan Andrade', '2019-08-08', '(061) 2486-8727', 'Pátio de da Costa, 32, Boa Viagem, 02490-991 Sampaio / GO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('27680495149', 'Ravy Ramos', '1943-06-10', '+55 84 9031-0483', 'Loteamento de Araújo, 94, Tupi B, 36280-139 Pereira Grande / GO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('75463821062', 'Enzo Duarte', '1966-01-02', '61 4341 4605', 'Viaduto de Pacheco, 6, Vila Madre Gertrudes 3ª Seção, 70574159 Melo da Mata / MT');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('68273459128', 'Catarina Siqueira', '1984-08-30', '+55 61 7932-5447', 'Condomínio de Barbosa, Carmo, 69912-443 Carvalho / DF');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('79021438550', 'Oliver Brito', '1990-06-25', '(021) 8637 9602', 'Travessa de Viana, 14, Outro, 92228-937 Alves / PE');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('25718346909', 'Alexia Garcia', '1978-05-30', '(071) 0700 5356', 'Rodovia Ravi Silveira, 455, Dom Silverio, 06463512 Abreu de Barros / TO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('76503298102', 'Ravi Lucca Moreira', '1947-08-07', '+55 (031) 2372 8874', 'Ladeira de Aparecida, 6, São Tomaz, 56220-045 Viana / GO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('47952301888', 'Cauê da Cruz', '1970-12-11', '+55 (041) 9925 0404', 'Campo Daniela Rodrigues, 38, João Paulo Ii, 77331-791 Vargas dos Dourados / BA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('61023487535', 'Maria Júlia Barbosa', '1962-01-07', '+55 (081) 1578 1904', 'Jardim de Nascimento, 848, Santa Inês, 33374256 Mendes / RN');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('98476520310', 'Ana Beatriz Aparecida', '2020-10-18', '(011) 2719 4351', 'Estrada Sales, 3, Xangri-Lá, 37677289 da Rosa da Praia / SP');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('36812497509', 'Maria Liz Teixeira', '1976-01-22', '+55 71 5382 6162', 'Ladeira de Ramos, 1, Boa Vista, 66790-536 Nascimento / DF');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('57209836195', 'Ian Andrade', '1934-12-05', '+55 (021) 2757-9963', 'Conjunto de Dias, Bairro Das Indústrias Ii, 08045059 Cavalcante Alegre / BA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('56742018380', 'Srta. Larissa Montenegro', '1981-02-16', '51 4194 5008', 'Ladeira Teixeira, Dom Bosco, 06530-754 Nunes / RS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('89167302440', 'Aylla Lima', '1945-10-03', '+55 84 2289-6975', 'Largo Vitor da Rosa, 3, Morro Dos Macacos, 00475700 Aragão de Goiás / SC');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('96012354770', 'Sr. Paulo Lima', '1994-08-30', '(051) 8924 9526', 'Área Cavalcanti, 31, Serra Verde, 86404-534 Pimenta / CE');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('40567291316', 'José Miguel Andrade', '2020-08-02', '+55 (011) 2714-4201', 'Largo Maria Helena Cavalcanti, 29, Jardim Guanabara, 74343-257 Andrade Paulista / DF');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('29607843592', 'Dra. Heloísa Barbosa', '1993-02-28', '+55 41 4857 2084', 'Trecho Souza, Carlos Prates, 46658-322 Rezende / RR');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('69273108431', 'Sra. Marcela Marques', '1959-05-19', '+55 31 8810 1731', 'Pátio da Cunha, 519, Cidade Nova, 09627-182 Ramos de Fogaça / RS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('97836120503', 'Manuela da Costa', '2000-10-25', '+55 81 9869-5926', 'Estrada Fogaça, Vila Madre Gertrudes 1ª Seção, 89043306 Monteiro Paulista / AL');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('27419056811', 'Yago Dias', '1980-03-26', '+55 (071) 7990 4397', 'Jardim Camila Cunha, 37, Piraja, 80650955 Rocha do Amparo / DF');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('18324076913', 'Kaique Costa', '1960-05-24', '(061) 5433 1160', 'Vila Mateus Azevedo, 757, Santa Lúcia, 06229-438 Nunes / MA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('49163758075', 'Anthony Moura', '2015-07-12', '+55 81 2175-7950', 'Rua de Mendes, 42, João Pinheiro, 83964864 Costa de Minas / MS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('83420961731', 'Otto Pinto', '1973-02-03', '(071) 0382 0812', 'Quadra Maria Vitória Castro, 73, Vila Nova Cachoeirinha 2ª Seção, 14949175 Novais Grande / GO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('51049823605', 'Alice da Conceição', '1946-07-20', '+55 61 8636-3838', 'Fazenda Apollo da Cunha, 46, Novo Das Industrias, 91034-853 Pires / DF');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('79250843674', 'João Guilherme Ribeiro', '1997-05-11', '0500-805-6232', 'Favela Milena Ferreira, 85, Alta Tensão 1ª Seção, 18355145 Almeida / MA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('78653142991', 'Laís Pereira', '2016-08-14', '+55 41 3962-2502', 'Morro Cardoso, 7, Cidade Nova, 36104885 Teixeira dos Dourados / PE');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('29846751001', 'Ana Carolina Rocha', '1984-03-23', '(084) 5984 5192', 'Praça de Rocha, 778, Bonsucesso, 07946464 Araújo de Moreira / TO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('12860759395', 'Laura da Mata', '2012-03-19', '+55 11 5835 1935', 'Chácara de Albuquerque, 6, Santa Sofia, 07051558 Santos / AP');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('24735986065', 'Gabrielly Ribeiro', '2007-03-06', '(041) 8421-0546', 'Vereda de Nunes, 39, Paulo Vi, 93647-220 Freitas / PR');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('72548106985', 'João Miguel Freitas', '1952-03-02', '(081) 5782 8817', 'Estrada de Mendonça, 32, Salgado Filho, 06476192 Sousa das Flores / PI');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('18269047511', 'Manuella Moreira', '1953-01-26', '(031) 2305 6587', 'Vale Pinto, Vila Maloca, 54570-099 Cirino / RO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('31570942897', 'Dr. Rael Aparecida', '2013-03-29', '41 8439-3091', 'Residencial de da Paz, 59, Vera Cruz, 40592-308 Cassiano Grande / PR');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('62983410722', 'Luiz Miguel Montenegro', '1938-03-13', '(071) 8618-1178', 'Lagoa Porto, 363, Zilah Sposito, 92125-123 Siqueira / MT');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('23458061924', 'Dr. Samuel Vargas', '1935-09-29', '+55 (061) 9547-6253', 'Campo de Sousa, Vila Nova Gameleira 1ª Seção, 92739189 Caldeira do Norte / TO');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('17524930879', 'Leonardo Pacheco', '1963-05-02', '84 5581 2315', 'Avenida Luna da Conceição, 41, Vila Da Ária, 68405-160 Duarte / CE');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('73214806904', 'Hadassa Sá', '1976-03-09', '84 7766-4471', 'Área Siqueira, 40, Universo, 45046254 Lopes Verde / MT');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('26054978101', 'Sra. Maria Flor da Paz', '1954-09-27', '+55 (021) 4660 1693', 'Praça da Conceição, 412, Vila Santa Monica 2ª Seção, 34562146 Nogueira de Goiás / PB');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('12539867464', 'Sr. Paulo Barros', '1983-06-23', '(031) 5466-7697', 'Pátio Laís Sampaio, 3, Tres Marias, 15559-994 da Rosa da Prata / PA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('35974802179', 'Arthur Borges', '1986-03-07', '0900 324 7308', 'Loteamento Gustavo Henrique da Paz, 71, São Sebastião, 15145-436 Santos / RS');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('63089271559', 'Francisco Machado', '2001-11-28', '+55 84 9012-7445', 'Pátio da Mata, Mariquinhas, 33317621 Cavalcante Paulista / PA');
INSERT INTO Paciente (CPF, Nome, Data_Nascimento, Telefone, Endereco) VALUES ('01397864575', 'Gael Henrique Farias', '1953-06-09', '(021) 3165-0177', 'Ladeira Maitê Rezende, 64, São Benedito, 92722063 Fonseca / SC');

-- Dados para a tabela Atendimento
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-23', '19:11:31', 'Hipertensão', 305.87, '14102-08', '76503298102');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-27', '00:39:59', 'Fratura no Braço', 220.32, '37104-75', '68273459128');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-22', '06:15:41', 'Resfriado Comum', 354.27, '82555-03', '69273108431');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-28', '15:27:27', 'Alergia de Pele', 139.51, '46822-07', '29607843592');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-11', '18:57:46', 'Check-up Anual', 452.85, '57155-58', '49256387182');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-24', '08:04:31', 'Influenza', 333.78, '02022-90', '24735986065');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-02', '23:47:29', 'Gastrite', 256.77, '14102-08', '56742018380');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-19', '11:46:48', 'Check-up Anual', 331.94, '74269-14', '21745386955');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-29', '09:30:43', 'Alergia de Pele', 424.26, '26814-88', '69273108431');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-07', '04:20:46', 'Diabetes Tipo 2', 128.62, '47676-17', '27680495149');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-22', '23:20:08', 'Dor de Cabeça', 333.99, '37104-75', '78620459120');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-09-08', '21:30:33', 'Diabetes Tipo 2', 388.73, '46822-07', '17524930879');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-08', '05:05:49', 'Dor de Cabeça', 336.73, '02022-90', '98476520310');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-02', '17:11:12', 'Fratura no Braço', 261.07, '14102-08', '96012354770');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-15', '20:34:29', 'Hipertensão', 230.13, '74269-14', '17524930879');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-04', '04:54:19', 'Alergia de Pele', 304.2, '47676-17', '79250843674');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-30', '22:18:06', 'Influenza', 279.26, '26814-88', '94832561782');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-07', '19:49:45', 'Diabetes Tipo 2', 438.31, '57155-58', '74395621864');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-05', '06:46:42', 'Influenza', 266.61, '82555-03', '49163758075');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-09', '23:30:14', 'Hipertensão', 210.71, '05660-82', '12539867464');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-01', '08:14:24', 'Infecção Urinária', 257.0, '37104-75', '31570942897');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-13', '09:47:31', 'Gastrite', 278.74, '47676-17', '40567291316');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-02', '18:06:27', 'Diabetes Tipo 2', 388.81, '02022-90', '76503298102');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-04', '23:45:54', 'Diabetes Tipo 2', 276.28, '46822-07', '96012354770');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-09', '01:39:29', 'Check-up Anual', 471.33, '46822-07', '49163758075');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-26', '06:05:42', 'Hipertensão', 382.08, '47676-17', '59704823665');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-29', '02:31:25', 'Alergia de Pele', 186.71, '37104-75', '51049823605');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-30', '08:27:31', 'Influenza', 464.47, '05660-82', '97836120503');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-25', '21:46:13', 'Resfriado Comum', 303.39, '26814-88', '73214806904');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-22', '19:05:01', 'Resfriado Comum', 336.25, '05660-82', '98476520310');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-26', '15:30:38', 'Alergia de Pele', 353.22, '14102-08', '78620459120');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-15', '17:14:53', 'Dor de Cabeça', 311.34, '02022-90', '29846751001');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-06', '07:23:25', 'Dor de Cabeça', 302.25, '02022-90', '75463821062');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-26', '17:19:52', 'Gastrite', 287.59, '05660-82', '61023487535');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-03', '04:03:09', 'Hipertensão', 119.62, '46822-07', '18269047511');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-18', '23:30:42', 'Fratura no Braço', 109.33, '37104-75', '68273459128');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-11', '00:45:12', 'Diabetes Tipo 2', 469.88, '37104-75', '72950861377');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-18', '21:28:14', 'Diabetes Tipo 2', 419.08, '37104-75', '56742018380');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-16', '04:34:52', 'Dor de Cabeça', 357.01, '37104-75', '61023487535');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-11', '19:57:31', 'Infecção Urinária', 234.86, '05660-82', '25718346909');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-17', '01:46:51', 'Diabetes Tipo 2', 284.81, '74269-14', '61023487535');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-09-08', '06:25:21', 'Check-up Anual', 193.6, '26814-88', '12539867464');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-10', '20:56:18', 'Infecção Urinária', 355.26, '47676-17', '63089271559');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-16', '08:17:20', 'Resfriado Comum', 205.9, '02022-90', '69273108431');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-11', '15:20:25', 'Diabetes Tipo 2', 266.58, '37104-75', '94832561782');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-27', '04:56:53', 'Hipertensão', 349.09, '02022-90', '01397864575');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-18', '16:39:27', 'Infecção Urinária', 221.76, '05660-82', '36812497509');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-12', '01:17:06', 'Fratura no Braço', 311.87, '57155-58', '78620459120');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-11', '02:36:14', 'Gastrite', 418.05, '74269-14', '61023487535');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-05', '23:23:22', 'Alergia de Pele', 319.05, '02022-90', '72950861377');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-28', '23:23:37', 'Diabetes Tipo 2', 394.52, '82555-03', '51049823605');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-12', '15:38:23', 'Fratura no Braço', 313.59, '14102-08', '16037824940');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-30', '04:06:11', 'Check-up Anual', 370.71, '82555-03', '49256387182');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-12', '06:39:37', 'Diabetes Tipo 2', 205.53, '37104-75', '12860759395');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-12', '21:34:40', 'Hipertensão', 121.0, '05660-82', '56742018380');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-19', '13:03:11', 'Gastrite', 245.5, '57155-58', '68273459128');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-18', '11:43:40', 'Resfriado Comum', 344.61, '02022-90', '12539867464');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-11', '15:16:48', 'Dor de Cabeça', 332.3, '74269-14', '24507986338');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-18', '19:32:39', 'Resfriado Comum', 376.77, '46822-07', '40567291316');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-30', '11:46:31', 'Dor de Cabeça', 474.01, '74269-14', '51049823605');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-04', '17:04:17', 'Hipertensão', 311.93, '47676-17', '59704823665');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-19', '23:46:30', 'Resfriado Comum', 414.37, '46822-07', '62983410722');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-15', '03:22:20', 'Influenza', 203.06, '02022-90', '12860759395');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-09-05', '03:34:07', 'Infecção Urinária', 356.96, '46822-07', '35974802179');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-10', '10:16:49', 'Dor de Cabeça', 108.88, '37104-75', '29846751001');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-16', '23:34:40', 'Infecção Urinária', 276.58, '82555-03', '31570942897');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-13', '19:53:38', 'Fratura no Braço', 213.48, '47676-17', '18269047511');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-16', '13:46:16', 'Fratura no Braço', 119.18, '74269-14', '25718346909');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-08', '20:41:11', 'Resfriado Comum', 303.93, '37104-75', '49163758075');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-06', '02:29:53', 'Hipertensão', 297.32, '02022-90', '78653142991');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-28', '09:33:59', 'Resfriado Comum', 192.83, '82555-03', '25718346909');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-23', '13:50:05', 'Gastrite', 289.96, '46822-07', '24507986338');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-22', '22:51:43', 'Fratura no Braço', 113.9, '02022-90', '96012354770');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-04', '12:01:23', 'Diabetes Tipo 2', 433.27, '57155-58', '40567291316');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-25', '19:55:30', 'Influenza', 239.71, '82555-03', '62983410722');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-31', '22:10:46', 'Infecção Urinária', 462.18, '47676-17', '40567291316');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-31', '11:12:51', 'Alergia de Pele', 440.34, '82555-03', '97836120503');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-08', '06:58:25', 'Diabetes Tipo 2', 303.69, '46822-07', '23458061924');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-04', '19:43:34', 'Hipertensão', 305.54, '14102-08', '61023487535');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-20', '14:29:13', 'Infecção Urinária', 488.47, '05660-82', '49163758075');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-30', '16:32:16', 'Influenza', 319.45, '82555-03', '47952301888');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-13', '02:46:33', 'Influenza', 315.53, '46822-07', '56742018380');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-01-17', '17:56:48', 'Diabetes Tipo 2', 310.28, '57155-58', '72548106985');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-10', '06:42:55', 'Influenza', 402.84, '37104-75', '35974802179');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-31', '18:10:50', 'Diabetes Tipo 2', 389.98, '02022-90', '79021438550');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-17', '11:48:05', 'Diabetes Tipo 2', 340.29, '05660-82', '75463821062');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-02-15', '06:35:35', 'Hipertensão', 470.21, '47676-17', '96012354770');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-05-09', '16:29:00', 'Infecção Urinária', 103.23, '82555-03', '89167302440');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-06', '13:52:03', 'Check-up Anual', 452.24, '47676-17', '21745386955');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-30', '08:42:06', 'Hipertensão', 178.69, '37104-75', '49163758075');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-07', '10:08:17', 'Dor de Cabeça', 469.23, '14102-08', '29607843592');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-22', '13:02:40', 'Fratura no Braço', 350.35, '82555-03', '63089271559');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-09-07', '02:47:21', 'Influenza', 467.14, '14102-08', '98476520310');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-16', '07:14:12', 'Fratura no Braço', 284.33, '46822-07', '68273459128');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-08-03', '23:30:16', 'Resfriado Comum', 313.37, '47676-17', '18324076913');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-07-29', '15:45:34', 'Infecção Urinária', 473.38, '46822-07', '79250843674');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-16', '01:17:05', 'Infecção Urinária', 453.47, '37104-75', '24735986065');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-04-08', '12:53:57', 'Diabetes Tipo 2', 113.68, '46822-07', '25718346909');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-03-15', '19:04:52', 'Fratura no Braço', 292.13, '14102-08', '59704823665');
INSERT INTO Atendimento (Data, Hora, Diagnostico, Valor_Consulta, CRM, CPF) VALUES ('2025-06-13', '02:20:05', 'Gastrite', 236.94, '47676-17', '79250843674');
USE HospitalDB;

-- Consultas:
-- Selecionar todos os pacientes cadastrados em ordem alfabética:
SELECT 
	* 
FROM Paciente
ORDER BY Nome ASC;

-- Liste os médicos da especialidade "Cardiologia":

SELECT
	*
FROM Medico
WHERE Especialidade = 'Cardiologia';

-- Mostre os atendimentos realizados em uma data específica (por exemplo, '2025-08-20')
SELECT
	*
FROM Atendimento
WHERE Data = '2025-08-07';

-- Liste o nome do paciente, nome do médico e diagnóstico de todos os atendimentos
SELECT
	p.Nome AS Nome_Paciente,
    m.Nome AS Nome_Medico,
    a.diagnostico AS Diagnostico
FROM Atendimento a
INNER JOIN Paciente p
ON p.CPF = a.CPF
INNER JOIN Medico m
ON m.CRM = a.CRM; 

-- Calcule o valor total arrecadado em atendimentos:
SELECT 
	SUM(Valor_Consulta) AS 'Total Arrecadado'
FROM Atendimento;

-- Mostre o paciente que mais realizou atendimentos no hospital
SELECT
	p.Nome AS Nome_Paciente,
	COUNT(a.CPF) AS Total_Atendimentos
FROM Atendimento a
INNER JOIN Paciente p
ON p.CPF = a.CPF
GROUP BY p.Nome
ORDER BY Total_Atendimentos DESC
LIMIT 1; 

-- Mostre quantos pacientes cada médico já atendeu:
SELECT 
    m.Nome AS Nome_Medico, 
    COUNT(a.CPF) AS Total_Pacientes
FROM
    Atendimento a
        INNER JOIN
    Medico m ON m.CRM = a.CRM
GROUP BY Nome_Medico
ORDER BY Total_Pacientes DESC;

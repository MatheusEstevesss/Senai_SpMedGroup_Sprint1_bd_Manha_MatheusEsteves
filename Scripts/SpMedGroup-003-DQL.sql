SELECT Medicos.IdMedico,Medicos.NomeMedico,Medicos.CRM,Usuarios.Email,Usuarios.Senha,TipoUsuario.Titulo as TipoUsuario,Clinicas.RazaoSocial,Clinicas.CNPJ,Enderecos.Rua,Enderecos.Numero,Especialidades.NomeEspecialidade as Especialidade FROM Medicos 
INNER JOIN Usuarios ON Medicos.IdUsuario = Usuarios.IdUsuario
INNER JOIN TipoUsuario ON Usuarios.IdTipoUsuario = TipoUsuario.IdTipoUsuario
INNER JOIN Clinicas ON Medicos.IdClinica = Clinicas.IdClinica
INNER JOIN Enderecos ON Clinicas.IdEndereco = Enderecos.IdEndereco
INNER JOIN Especialidades ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade;

SELECT * FROM Consultas;
SELECT Consultas.IdConsulta,Consultas.DataConsulta,Consultas.Descricao,Prontuarios.NomePaciente,Prontuarios.CPF,Medicos.NomeMedico,Medicos.CRM,Clinicas.RazaoSocial,Enderecos.CEP,Enderecos.Rua,Enderecos.Numero,Situacao.Titulo as Situacao FROM Consultas
INNER JOIN Prontuarios ON Consultas.IdProntuario = Prontuarios.IdProntuario
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
INNER JOIN Situacao ON Consultas.IdSituacao = Situacao.IdSituacao
INNER JOIN Clinicas ON Medicos.IdClinica = Clinicas.IdClinica
INNER JOIN Enderecos ON Clinicas.IdEndereco = Enderecos.IdEndereco;


SELECT * FROM Prontuarios;
SELECT Prontuarios.IdProntuario,Prontuarios.NomePaciente,Prontuarios.DataNascimento,Prontuarios.Telefone,Prontuarios.RG,Prontuarios.CPF,Usuarios.Email,Usuarios.Senha,TipoUsuario.Titulo as TipoUsuario,Enderecos.Rua,Enderecos.Numero FROM Prontuarios
INNER JOIN Usuarios ON Prontuarios.IdUsuario = Usuarios.IdUsuario
INNER JOIN TipoUsuario ON Usuarios.IdTipoUsuario = TipoUsuario.IdTipoUsuario
INNER JOIN Enderecos ON Prontuarios.IdEndereco = Enderecos.IdEndereco;

SELECT * FROM Clinicas;
SELECT Clinicas.IdClinica,Clinicas.RazaoSocial,Clinicas.CNPJ,Clinicas.NomeFantasia,Clinicas.HorarioFuncionamento,Enderecos.Rua,Enderecos.Numero FROM Clinicas
INNER JOIN Enderecos ON Clinicas.IdEndereco = Enderecos.IdEndereco;

SELECT * FROM Usuarios;
SELECT Usuarios.IdUsuario,Usuarios.Email,Usuarios.Senha,TipoUsuario.Titulo as TipoUsuario FROM Usuarios
INNER JOIN TipoUsuario ON Usuarios.IdTipoUsuario = TipoUsuario.IdTipoUsuario;

SELECT COUNT (IdUsuario) as QuantidadeUsuarios
FROM Usuarios;

SELECT COUNT (IdMedico) as QtdMedicosEspecialidades
FROM Medicos
WHERE IdEspecialidade=17;

Select * from Prontuarios;
SELECT NomePaciente, CONVERT(VARCHAR(10), DataNascimento, 101) as 'Data Nascimento',TeleFone,RG,CPF,IdUsuario,IdEndereco FROM Prontuarios 

SELECT CONVERT(VARCHAR(10), GETDATE(), 101) AS [MM/DD/YYYY];

SELECT * FROM TipoUsuario ORDER BY IdTipoUsuario;
SELECT * FROM Situacao;
SELECT * FROM Especialidades ORDER BY IdEspecialidade;

EXEC spUsuarios;

SELECT Medicos.IdMedico,Medicos.NomeMedico,Medicos.CRM,Usuarios.Email,Usuarios.Senha,TipoUsuario.Titulo as TipoUsuario,Clinicas.RazaoSocial,Clinicas.CNPJ,Enderecos.Rua,Enderecos.Numero,Especialidades.NomeEspecialidade as Especialidade FROM Medicos 
INNER JOIN Usuarios ON Medicos.IdUsuario = Usuarios.IdUsuario
INNER JOIN TipoUsuario ON Usuarios.IdTipoUsuario = TipoUsuario.IdTipoUsuario
INNER JOIN Clinicas ON Medicos.IdClinica = Clinicas.IdClinica
INNER JOIN Enderecos ON Clinicas.IdEndereco = Enderecos.IdEndereco
INNER JOIN Especialidades ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade;

SELECT * FROM Consultas;
SELECT Consultas.IdConsulta,Consultas.DataConsulta,Consultas.Descricao,Prontuarios.NomePaciente,Prontuarios.CPF,Medicos.NomeMedico,Medicos.CRM,Situacao.Titulo as Situacao FROM Consultas
INNER JOIN Prontuarios ON Consultas.IdProntuario = Prontuarios.IdProntuario
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
INNER JOIN Situacao ON Consultas.IdSituacao = Situacao.IdSituacao;

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
CREATE PROC spUsuarios
AS
	BEGIN
		SELECT NomePaciente						 AS NOME
		,CONVERT(VARCHAR(10),dataNascimento,110) AS ['Data Nascimento']
		,YEAR(GETDATE())-YEAR(dataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(dataNascimento)*32+DAY(dataNascimento),1,0) AS IDADE
		,TeleFone								 AS TELEFONE
		,RG										 AS RG
		,CPF									 AS CPF
		,IdEndereco								 AS ENDERE�O
		,TipoUsuario.Titulo						AS 'TIPO USU�RIO'
		FROM Prontuarios
		INNER JOIN Usuarios ON Prontuarios.IdUsuario = Usuarios.IdUsuario
		INNER JOIN TipoUsuario ON Usuarios.IdTipoUsuario = TipoUsuario.IdTipoUsuario
	END
GO
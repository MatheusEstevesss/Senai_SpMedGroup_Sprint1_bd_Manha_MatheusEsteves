select * from Enderecos;
INSERT INTO Enderecos (Rua,Bairro,Estado,Numero,CEP)
VALUES ('aAv Paulista','Bela Vista','SP','1578','');

select * from TipoUsuario;
INSERT INTO TipoUsuario (Titulo)
VALUES	('Administrador')
		,('Paciente')
		,('Medico');

SELECT * FROM Usuarios;
INSERT INTO Usuarios (Email,Senha,IdTipoUsuario)
VALUES	('matheus@email.com','123123',1)
		,('ricardo.lemos@spmedicalgroup.com.br','ricardo',3)
		,('roberto.possarle@spmedicalgroup.com.br','possarle',3)
		,('helena.souza@spmedicalgroup.com.br','Helena',3)
		,('ligia@gmail.com','abc',2)
		,('alexandre@gmail.com','abc',2)
		,('fernando@gmail.com','abc',2)
		,('henrique@gmail.com','abc',2)
		,('joao@hotmail.com','abc',2)
		,('bruno@gmail.com','abc',2)
		,('mariana@outlook.com','abc',2)
		,('fernadostrada@gmail.com','abc',2);

SELECT * FROM Situacao;
INSERT INTO Situacao (Titulo)
VALUES	('Agendada')
		,('Finalizada')
		,('Cancelada');

SELECT * FROM Usuarios;
select * from Medicos;	

INSERT INTO Especialidades (NomeEspecialidade)
VALUES ('Acupuntura')
		,('Anestesiologia')
		,('Angiologia')
		,('Cardiologia')
		,('Cirurgia Cardiovascular')
		,('Cirurgia da Mão')
		,('Cirurgia do Aparelho Digestivo')
		,('Cirurgia Geral')
		,('Cirurgia Pediátrica')
		,('Cirurgia Plástica')
		,('Cirurgia Torácica')
		,('Cirurgia Vascular')
		,('Dermatologia')
		,('Radioterapia')
		,('Urologia')
		,('Pediatria')
		,('Psiquiatria');

		select * from Clinicas;
INSERT INTO Clinicas (RazaoSocial,CNPJ,NomeFantasia,HorarioFuncionamento,IdEndereco)
VALUES ('Sp Medical Group','11111111111111','Clinica Possarle','4hrs as 00hrs',2);

INSERT INTO Medicos (NomeMedico,CRM,IdClinica,IdUsuario,IdEspecialidade)
VALUES	('Ricardo Lemos','54356SP',1,2,2)
		,('Roberto Possarle','53452SP',1,3,17)
		,('Helena Strada','65463SP',1,4,16);

		select * from Medicos;
select * from Prontuarios;
INSERT INTO Prontuarios (NomePaciente,DataNascimento,Telefone,RG,CPF,IdUsuario,IdEndereço)
VALUES	('Ligia','13/10/1983','1134567654','435225435','94839859000',4,)
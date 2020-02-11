INSERT INTO Enderecos (Rua,Cidade,Estado,Numero,CEP)
VALUES	('AV. Barão Limeira','São Paulo','SP',532,'1202001')
		,('Rua Estado de Israel','São Paulo','SP',240,'4022000')
		,('AV. Paulista','Bela Vista','SP',1578,'1310200')
		,('AV. Ibirapuera','Indianópolis','SP',2927,'4029200')
		,('Rua Vitória','Barueri','SP',120,'6402030')
		,('R. Ver. Geraldo Camargo','Ribeirão Pires','SP',66,'9405380')
		,('Alameda dos Arapanés','Indianópolis','SP',945,'4524001')
		,('Rua Santo Antonio','Barueri','SP',232,'6407140');
		
INSERT INTO Clinicas (RazaoSocial,CNPJ,NomeFantasia,HorarioFuncionamento,IdEndereco)
VALUES	('Sp Medical Group','86400902000130','Clinica Possarle','Das 4hrs às 00hrs',1);

INSERT INTO TipoUsuario (Titulo)
VALUES	('Administrador')
		,('Paciente')
		,('Médico');

INSERT INTO Usuarios (Email,Senha,IdTipoUsuario)
VALUES	('fernandostrada@emaio.com','asdf123',1)
		,('ricardo.lemos@spmedicalgroup.com.br','abc',3)
		,('roberto.possarle@spmedicalgroup.com.br','abc',3)
		,('helena.souza@spmedicalgroup.com.br','abc',3)
		,('ligia@gmail.com','abc',2)
		,('alexandre@gmail.com','abc',2)
		,('fernando@gmail.com','abc',2)
		,('henrique@gmail.com','abc',2)
		,('joao@hotmail.com','abc',2)
		,('bruno@gmail.com','abc',2)
		,('mariana@outlook.com','abc',2);

INSERT INTO Especialidades (NomeEspecialidade)
VALUES	('Acupuntura')
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

INSERT INTO Situacao (Titulo)
VALUES	('Agendada')
		,('Realizada')
		,('Cancelada');

INSERT INTO Medicos (NomeMedico,CRM,IdUsuario,IdClinica,IdEspecialidade)
VALUES	('Ricardo Lemos','54356SP',2,1,2)
		,('Roberto Possarle','53452SP',3,1,17)
		,('Helena Strada','65463SP',4,1,16);

INSERT INTO Prontuarios (NomePaciente,DataNascimento,Telefone,RG,CPF,IdUsuario,IdEndereco)
VALUES	('Ligia','13/10/1983','1134567654','435225435','94839859000',5,2)
		,('Alexandre','23/07/2001','11987656543','326543457','73556944057',6,3)
		,('Fernando','10/10/1978','11972084453','546365253','16839338002',7,4)
		,('Henrique','13/10/1985','1134566543','543663625','14332654765',8,5)
		,('João','27/08/1975','1176566377','325444441','91305348010',9,6)
		,('Bruno','21/03/1972','11954368769','545662667','79799299004',10,7)
		,('Mariana','05/03/2018','11912345678','545662668','13771913039',11,8);

INSERT INTO Consultas (DataConsulta,Descricao,IdProntuario,IdMedico,IdSituacao)
VALUES	('20/01/2020 15:00','aaa',7,3,1)
		,('06/01/2020 10:00','',2,2,3)
		,('07/02/2020 11:00','aaa',3,2,2)
		,('06/02/2018 10:00','aaa',2,2,2)
		,('07/02/2019 11:00','',4,1,3)
		,('08/03/2020 15:00','',7,3,1)
		,('09/03/2020 11:00','',4,1,1);
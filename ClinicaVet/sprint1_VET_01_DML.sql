USE clinicaVeterinaria;


INSERT INTO clinica(endereco, razaoSocial, nome)
VALUES			   ('Rua Ricardo Vilela, 2001', 'Clinica Veterinaria Coração Pet', 'CãoQMia');

INSERT INTO veterinario(idClinica, veterinario, crmv)
VALUES					 (1, 'Leticia Barbosa', '2432/SP')
						,(1, 'Mauricio de Souza', '9878/SP');
--Esqueci de que tinha o tipo...
ALTER TABLE pet	ADD tipo VARCHAR(150);

INSERT INTO pet(idClinica, nomePet, nascimento, raca, dono, tipo)
VALUES			 (1,'Fofuxo', '01/04/2015', 'Shih-tzu', 'Edvaldo', 'canino')
				,(1,'Floquinho', '03/05/2010', 'Lhasa Apso', 'Cebolinha', 'canino')
				,(1,'Bidu', '22/12/2012', 'Scottish Terrier', 'Franjinha', 'canino')
				,(1,'Monicão', '15/10/2008', 'King Charles Spaniel', 'Mônica', 'canino')
				,(1,'Mingau', '12/10/2020', 'Angorá', 'Magali', 'felino')
				,(1,'Harry', '08/08/2018', 'Calopsita', 'Angelina', 'ave');

INSERT INTO atendimento(idVeterinario, idPet, descricao, dataconsulta)
VALUES					 (1, 3, 'Limpeza dentária - retirada de tartáro', '11/11/2020')
						,(1, 1, 'Vacinação', '11/10/2020')
						,(2, 2, 'Consulta de rotina', '11/10/2020')
						,(2, 5, 'Consulta de rotina', '13/10/2020')
						,(2, 4, 'Limpeza dentária - retirada de tartáro', '13/11/2020')
						,(1, 6, 'Consulta de rotina', '11/09/2020');
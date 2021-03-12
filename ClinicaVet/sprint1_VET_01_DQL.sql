USE clinicaVeterinaria;

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT veterinario.veterinario, veterinario.crmv, clinica.razaoSocial FROM veterinario
LEFT JOIN clinica
ON veterinario.idClinica = clinica.idClinica;

-- listar todas as raças que começam com a letra S
SELECT pet.raca FROM pet
WHERE pet.raca LIKE 'S%'
order by pet.raca;

-- listar todos os tipos de pet que terminam com a letra O
SELECT pet.tipo FROM pet
WHERE pet.tipo LIKE '%o'
order by pet.tipo;

-- listar todos os pets mostrando os nomes dos seus donos
SELECT * FROM pet;
SELECT* FROM atendimento;

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça 
--e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT veterinario.veterinario, pet.nomePet pet, pet.raca raça, pet.tipo, pet.dono, clinica.nome FROM atendimento
LEFT JOIN pet
ON atendimento.idPet = pet.idPet
LEFT JOIN veterinario
ON atendimento.idVeterinario = veterinario.idVeterinario
LEFT JOIN clinica
ON veterinario.idClinica = clinica.idClinica;

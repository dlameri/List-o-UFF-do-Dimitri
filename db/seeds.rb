# -*- coding: utf-8 -*-

AdminUser.create(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')

Disciplina.create([
	{ nome: 'Língua Portuguesa e Literaturas de Língua Portuguesa', apelido: 'LPLLP', prioridade: 1 },
	{ nome: 'Biologia', apelido: 'BIO', prioridade: 2 },
	{ nome: 'Física', apelido: 'FIS', prioridade: 3 },
	{ nome: 'Química', apelido: 'QUI', prioridade: 4 },
	{ nome: 'Matemática', apelido: 'MAT', prioridade: 5 },
	{ nome: 'Geografia', apelido: 'GEO', prioridade: 6 },
	{ nome: 'História', apelido: 'HIS', prioridade: 7 },
	{ nome: 'Filosofia', apelido: 'FILO', prioridade: 8 },
	{ nome: 'Língua Estrangeira', apelido: 'EST', prioridade: 9 }
])

Unidade.create([
	{ nome: 'Niteroi' },
	{ nome: 'Itaperuna' },
	{ nome: 'Macaé' },
	{ nome: 'Volta Redonda' },
	{ nome: 'Nova Friburgo' },
	{ nome: 'Campos dos Goytacazes' },
	{ nome: 'Rio das Ostras' },
	{ nome: 'Santo Antonio de Pádua' },
	{ nome: 'Angra dos Reis' }
])

Ano.create([
	{ ano: 2011, atual: true, pronto: false }	
])
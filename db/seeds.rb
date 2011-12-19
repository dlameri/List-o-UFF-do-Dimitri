# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Disciplina.create([
	{ nome:'Língua Portuguesa e Literaturas de Língua Portuguesa', apelido: 'LPLLP', prioridade: 1 },
	{ nome:'Biologia', apelido: 'BIO', prioridade: 2 },
	{ nome:'Física', apelido: 'FIS', prioridade: 3 },
	{ nome:'Química', apelido: 'QUI', prioridade: 4 },
	{ nome:'Matemática', apelido: 'MAT', prioridade: 5 },
	{ nome:'Geografia', apelido: 'GEO', prioridade: 6 },
	{ nome:'História', apelido: 'HIS', prioridade: 7 },
	{ nome:'Filosofia', apelido: 'FILO', prioridade: 8 },
	{ nome:'Língua Estrangeira', apelido: 'EST', prioridade: 9 },
])
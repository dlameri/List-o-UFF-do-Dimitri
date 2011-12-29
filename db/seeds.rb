# -*- coding: utf-8 -*-

AdminUser.create(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')

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

Curso.create([
	{ codigo: 135,nome: 'Ciências Econômicas', unidade: Unidade.find_by_nome('Niteroi'), vagas: 161, ano: Ano.first },
	{ codigo: 210,nome: 'Ciências Sociais - Licenciatura', unidade: Unidade.find_by_nome('Niteroi'), vagas: 51, ano: Ano.first },
	{ codigo: 110,nome: 'Ciências Sociais - Bacharelado', unidade: Unidade.find_by_nome('Niteroi'), vagas: 31, ano: Ano.first },
 	{ codigo: 119,nome: 'Direito', unidade: Unidade.find_by_nome('Niteroi'), vagas: 293, ano: Ano.first },
	{ codigo: 211,nome: 'Geografia - Licenciatura', unidade: Unidade.find_by_nome('Niteroi'), vagas: 54, ano: Ano.first },
	{ codigo: 111,nome: 'Geografia - Bacharelado', unidade: Unidade.find_by_nome('Niteroi'), vagas: 32, ano: Ano.first },
	{ codigo: 212,nome: 'História - Licenciatura', unidade: Unidade.find_by_nome('Niteroi'), vagas: 163, ano: Ano.first },	
	{ codigo: 232,nome: 'Letras - Português/Literaturas - Licenciatura', unidade: Unidade.find_by_nome('Niteroi'), vagas: 74, ano: Ano.first },
	{ codigo: 124,nome: 'Serviço Social', unidade: Unidade.find_by_nome('Niteroi'), vagas: 176, ano: Ano.first },
	{ codigo: 156,nome: 'Sociologia', unidade: Unidade.find_by_nome('Niteroi'), vagas: 90, ano: Ano.first },	
	{ codigo: 154,nome: 'Hotelaria (Tecnólogo em Hotelaria)', unidade: Unidade.find_by_nome('Niteroi'), vagas: 40, ano: Ano.first },
	{ codigo: 133,nome: 'Administração', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 100 },
	{ codigo: 155,nome: 'Antropologia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 49 },
	{ codigo: 136,nome: 'Arquitetura e Urbanismo', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 74  },
	{ codigo: 115,nome: 'Arquivologia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 64 },
	{ codigo: 157,nome: 'Artes', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 34 },
	{ codigo: 116,nome: 'Biblioteconomia e Documentação', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 64 },
	{ codigo: 101,nome: 'Biomedicina', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 49 },
	{ codigo: 137,nome: 'Ciência da Computação', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 113 },
	{ codigo: 153,nome: 'Ciência Ambiental', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 38 },
	{ codigo: 151,nome: 'Ciências Atuariais', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 80 },
	{ codigo: 202,nome: 'Ciências Biológicas - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 30 },
	{ codigo: 102,nome: 'Ciências Biológicas - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 66 },
	{ codigo: 134,nome: 'Ciências Contábeis', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 100 },
	{ codigo: 117,nome: 'Cinema e Audiovisual - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 57 },
	{ codigo: 217,nome: 'Cinema e Audiovisual - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 57 },
	{ codigo: 114,nome: 'Comunicação Social - Jornalismo', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 41 },
	{ codigo: 118,nome: 'Comunicação Social - Publicidade e Propaganda', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 41 },
	{ codigo: 152,nome: 'Desenho Industrial', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 44 },
	{ codigo: 120,nome: 'Educação Física - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 50 },
	{ codigo: 103,nome: 'Enfermagem', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 90 },
	{ codigo: 161,nome: 'Engenharia Agrícola e Ambiental', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 162,nome: 'Engenharia Civil', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 163,nome: 'Engenharia de Petróleo', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 36 },
	{ codigo: 164,nome: 'Engenharia de Produção', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 160,nome: 'Engenharia de Recursos Hídricos e do Meio Ambiente', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 165,nome: 'Engenharia de Telecomunicações', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 166,nome: 'Engenharia Elétrica', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 68 },
	{ codigo: 167,nome: 'Engenharia Mecânica', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 145,nome: 'Engenharia Química', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 76 },
	{ codigo: 139,nome: 'Estatística', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 69 },
	{ codigo: 121,nome: 'Estudos de Mídia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 50 },
	{ codigo: 104,nome: 'Farmácia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 106 },
	{ codigo: 250,nome: 'Filosofia - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 46 },
	{ codigo: 150,nome: 'Filosofia - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 44 },
	{ codigo: 141,nome: 'Física - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 40 },
	{ codigo: 241,nome: 'Física - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 40 },
	{ codigo: 140,nome: 'Física - Licenciatura Noturna', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 48 },
	{ codigo: 142,nome: 'Geofísica', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 34 },
	{ codigo: 225,nome: 'Letras - Português/Alemão - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 10 },
	{ codigo: 125,nome: 'Letras - Bacharelado em Língua e Literatura Alemã', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 6 },
	{ codigo: 226,nome: 'Letras - Português/Espanhol - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 35 },
	{ codigo: 227,nome: 'Letras - Português/Francês - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 25 },
	{ codigo: 127,nome: 'Letras - Bacharelado em Língua e Literatura Francesa', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 10 },
	{ codigo: 228,nome: 'Letras - Português/Grego - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 13 },
	{ codigo: 128,nome: 'Letras - Bacharelado em Língua e Literatura Grega', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 7 },
	{ codigo: 229,nome: 'Letras - Português/Inglês - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 28 },
	{ codigo: 230,nome: 'Letras - Português/Italiano - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 14 },
	{ codigo: 130,nome: 'Letras - Bacharelado em Língua e Literatura Italiana', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 6 },
	{ codigo: 231,nome: 'Letras - Português/Latim - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 20 },
	{ codigo: 143,nome: 'Matemática - Licenciatura Noturna', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 59 },
	{ codigo: 244,nome: 'Matemática - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 67 },
	{ codigo: 144,nome: 'Matemática - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 24 },
	{ codigo: 105,nome: 'Medicina', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 144 },
	{ codigo: 106,nome: 'Medicina Veterinária', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 96 },
	{ codigo: 107,nome: 'Nutrição', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 66 },
	{ codigo: 108,nome: 'Odontologia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 72 },
	{ codigo: 122,nome: 'Pedagogia - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 128 },
	{ codigo: 123,nome: 'Produção Cultural', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 58 },
	{ codigo: 109,nome: 'Psicologia', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 82 },
	{ codigo: 146,nome: 'Química - Licenciatura Noturna', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 26 },
	{ codigo: 247,nome: 'Química - Licenciatura', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 21 },
	{ codigo: 147,nome: 'Química - Bacharelado', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 17 },
	{ codigo: 148,nome: 'Química Industrial', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 38 },
	{ codigo: 149,nome: 'Relações Internacionais', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 90 },
	{ codigo: 138,nome: 'Sistemas de Informação', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 98 },
	{ codigo: 113,nome: 'Turismo', ano: Ano.first, unidade: Unidade.find_by_nome('Niteroi'), vagas: 104 },	
	
	{ codigo: 401,nome: 'Pedagogia - Licenciatura', unidade: Unidade.find_by_nome('Angra dos Reis'), vagas: 65, ano: Ano.first },
	
	{ codigo: 430,nome: 'Administração', unidade: Unidade.find_by_nome('Itaperuna'), vagas: 40, ano: Ano.first },
	
	{ codigo: 471,nome: 'Administração', unidade: Unidade.find_by_nome('Macaé'), vagas: 40, ano: Ano.first },
	{ codigo: 472,nome: 'Ciências Contábeis', unidade: Unidade.find_by_nome('Macaé'), vagas: 40, ano: Ano.first },
	{ codigo: 470,nome: 'Direito', unidade: Unidade.find_by_nome('Macaé'), vagas: 112, ano: Ano.first },
	
	
	{ codigo: 350,nome: 'Administração Pública', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 42, ano: Ano.first },
	{ codigo: 359,nome: 'Química com ênfase em Química Tecnológica - Bacharelado', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 50, ano: Ano.first },
	{ codigo: 360,nome: 'Química - Licenciatura', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 50, ano: Ano.first },
	{ codigo: 358,nome: 'Matemática ênfase em Matemática Computacional - Bacharelado', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 114, ano: Ano.first },
	{ codigo: 352,nome: 'Administração', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 98, ano: Ano.first },
	{ codigo: 351,nome: 'Ciências Contábeis', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 98, ano: Ano.first },
	{ codigo: 357,nome: 'Física ênfase em Física Computacional - Bacharelado', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 114, ano: Ano.first },
	{ codigo: 354,nome: 'Engenharia de Produção', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 71, ano: Ano.first },
	{ codigo: 353,nome: 'Engenharia de Agronegócios', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 71, ano: Ano.first },
	{ codigo: 361,nome: 'Direito', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 66, ano: Ano.first },
	{ codigo: 355,nome: 'Engenharia Mecânica', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 71, ano: Ano.first },
	{ codigo: 356,nome: 'Engenharia Metalúrgica', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 71, ano: Ano.first },
	{ codigo: 362,nome: 'Psicologia', unidade: Unidade.find_by_nome('Volta Redonda'), vagas: 66, ano: Ano.first },
	
	{ codigo: 371,nome: 'Biomedicina', unidade: Unidade.find_by_nome('Nova Friburgo'), vagas: 24, ano: Ano.first },
	{ codigo: 372,nome: 'Fonoaudiologia', unidade: Unidade.find_by_nome('Nova Friburgo'), vagas: 28, ano: Ano.first },
	{ codigo: 370,nome: 'Odontologia', unidade: Unidade.find_by_nome('Nova Friburgo'), vagas: 99, ano: Ano.first },
	
	{ codigo: 324,nome: 'Ciência da Computação', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 56, ano: Ano.first },
	{ codigo: 321,nome: 'Psicologia', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 64, ano: Ano.first },
	{ codigo: 320,nome: 'Enfermagem', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 48, ano: Ano.first },
	{ codigo: 325,nome: 'Engenharia de Produção', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 56, ano: Ano.first },
	{ codigo: 322,nome: 'Produção Cultural', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 56, ano: Ano.first },
	{ codigo: 323,nome: 'Serviço Social', unidade: Unidade.find_by_nome('Rio das Ostras'), vagas: 56, ano: Ano.first },
	
	{ codigo: 440,nome: 'Ciências Contábeis', unidade: Unidade.find_by_nome('Miracema'), vagas: 40, ano: Ano.first },
	
	{ codigo: 302,nome: 'Ciências Econômicas', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 100, ano: Ano.first },
	{ codigo: 393,nome: 'Ciências Sociais - Bacharelado', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 48, ano: Ano.first },
	{ codigo: 303,nome: 'Ciências Sociais - Licenciatura', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 52, ano: Ano.first },
	{ codigo: 704,nome: 'Geografia - Licenciatura', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 65, ano: Ano.first },
	{ codigo: 304,nome: 'Geografia - Bacharelado', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 35, ano: Ano.first },
	{ codigo: 706,nome: 'História - Licenciatura', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 49, ano: Ano.first },
	{ codigo: 306,nome: 'História - Bacharelado', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 51, ano: Ano.first },
	{ codigo: 307,nome: 'Psicologia', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 100, ano: Ano.first },
	{ codigo: 305,nome: 'Serviço Social', unidade: Unidade.find_by_nome('Campos dos Goytacazes'), vagas: 96, ano: Ano.first },		
	
	{ codigo: 462,nome: 'Física - Licenciatura', unidade: Unidade.find_by_nome('Santo Antônio de Pádua'), vagas: 70, ano: Ano.first },
	{ codigo: 461,nome: 'Matemática - Licenciatura', unidade: Unidade.find_by_nome('Santo Antônio de Pádua'), vagas: 76, ano: Ano.first },
	{ codigo: 463,nome: 'Matemática Pura - Bacharelado', unidade: Unidade.find_by_nome('Santo Antônio de Pádua'), vagas: 40, ano: Ano.first },
	{ codigo: 460,nome: 'Pedagogia - Licenciatura', unidade: Unidade.find_by_nome('Santo Antônio de Pádua'), vagas: 108, ano: Ano.first }     
])

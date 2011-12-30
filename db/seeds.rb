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
	{ nome: 'Santo Antônio de Pádua' },
	{ nome: 'Angra dos Reis' }
])

niteroi = Unidade.find_by_nome('Niteroi')
angra = Unidade.find_by_nome('Angra dos Reis')
itaperuna = Unidade.find_by_nome('Itaperuna')
macae = Unidade.find_by_nome('Macaé')
voltaRedonda = Unidade.find_by_nome('Volta Redonda')
novaFriburgo = Unidade.find_by_nome('Nova Friburgo')
rioDasOstras = Unidade.find_by_nome('Rio das Ostras')
miracema = Unidade.find_by_nome('Miracema')
campos = Unidade.find_by_nome('Campos dos Goytacazes')
padua = Unidade.find_by_nome('Santo Antônio de Pádua')

Curso.create([
	{ codigo: 135,nome: 'Ciências Econômicas', unidade: niteroi, vagas: 161 },
	{ codigo: 210,nome: 'Ciências Sociais - Licenciatura', unidade: niteroi, vagas: 51 },
	{ codigo: 110,nome: 'Ciências Sociais - Bacharelado', unidade: niteroi, vagas: 31 },
 	{ codigo: 119,nome: 'Direito', unidade: niteroi, vagas: 293 },
	{ codigo: 211,nome: 'Geografia - Licenciatura', unidade: niteroi, vagas: 54 },
	{ codigo: 111,nome: 'Geografia - Bacharelado', unidade: niteroi, vagas: 32 },
	{ codigo: 212,nome: 'História - Licenciatura', unidade: niteroi, vagas: 163 },	
	{ codigo: 232,nome: 'Letras - Português/Literaturas - Licenciatura', unidade: niteroi, vagas: 74 },
	{ codigo: 124,nome: 'Serviço Social', unidade: niteroi, vagas: 176 },
	{ codigo: 156,nome: 'Sociologia', unidade: niteroi, vagas: 90 },	
	{ codigo: 154,nome: 'Hotelaria (Tecnólogo em Hotelaria)', unidade: niteroi, vagas: 40 },
	{ codigo: 133,nome: 'Administração', unidade: niteroi, vagas: 100 },
	{ codigo: 155,nome: 'Antropologia', unidade: niteroi, vagas: 49 },
	{ codigo: 136,nome: 'Arquitetura e Urbanismo', unidade: niteroi, vagas: 74  },
	{ codigo: 115,nome: 'Arquivologia', unidade: niteroi, vagas: 64 },
	{ codigo: 157,nome: 'Artes', unidade: niteroi, vagas: 34 },
	{ codigo: 116,nome: 'Biblioteconomia e Documentação', unidade: niteroi, vagas: 64 },
	{ codigo: 101,nome: 'Biomedicina', unidade: niteroi, vagas: 49 },
	{ codigo: 137,nome: 'Ciência da Computação', unidade: niteroi, vagas: 113 },
	{ codigo: 153,nome: 'Ciência Ambiental', unidade: niteroi, vagas: 38 },
	{ codigo: 151,nome: 'Ciências Atuariais', unidade: niteroi, vagas: 80 },
	{ codigo: 202,nome: 'Ciências Biológicas - Licenciatura', unidade: niteroi, vagas: 30 },
	{ codigo: 102,nome: 'Ciências Biológicas - Bacharelado', unidade: niteroi, vagas: 66 },
	{ codigo: 134,nome: 'Ciências Contábeis', unidade: niteroi, vagas: 100 },
	{ codigo: 117,nome: 'Cinema e Audiovisual - Bacharelado', unidade: niteroi, vagas: 57 },
	{ codigo: 217,nome: 'Cinema e Audiovisual - Licenciatura', unidade: niteroi, vagas: 57 },
	{ codigo: 114,nome: 'Comunicação Social - Jornalismo', unidade: niteroi, vagas: 41 },
	{ codigo: 118,nome: 'Comunicação Social - Publicidade e Propaganda', unidade: niteroi, vagas: 41 },
	{ codigo: 152,nome: 'Desenho Industrial', unidade: niteroi, vagas: 44 },
	{ codigo: 120,nome: 'Educação Física - Licenciatura', unidade: niteroi, vagas: 50 },
	{ codigo: 103,nome: 'Enfermagem', unidade: niteroi, vagas: 90 },
	{ codigo: 161,nome: 'Engenharia Agrícola e Ambiental', unidade: niteroi, vagas: 76 },
	{ codigo: 162,nome: 'Engenharia Civil', unidade: niteroi, vagas: 76 },
	{ codigo: 163,nome: 'Engenharia de Petróleo', unidade: niteroi, vagas: 36 },
	{ codigo: 164,nome: 'Engenharia de Produção', unidade: niteroi, vagas: 76 },
	{ codigo: 160,nome: 'Engenharia de Recursos Hídricos e do Meio Ambiente', unidade: niteroi, vagas: 76 },
	{ codigo: 165,nome: 'Engenharia de Telecomunicações', unidade: niteroi, vagas: 76 },
	{ codigo: 166,nome: 'Engenharia Elétrica', unidade: niteroi, vagas: 68 },
	{ codigo: 167,nome: 'Engenharia Mecânica', unidade: niteroi, vagas: 76 },
	{ codigo: 145,nome: 'Engenharia Química', unidade: niteroi, vagas: 76 },
	{ codigo: 139,nome: 'Estatística', unidade: niteroi, vagas: 69 },
	{ codigo: 121,nome: 'Estudos de Mídia', unidade: niteroi, vagas: 50 },
	{ codigo: 104,nome: 'Farmácia', unidade: niteroi, vagas: 106 },
	{ codigo: 250,nome: 'Filosofia - Licenciatura', unidade: niteroi, vagas: 46 },
	{ codigo: 150,nome: 'Filosofia - Bacharelado', unidade: niteroi, vagas: 44 },
	{ codigo: 141,nome: 'Física - Bacharelado', unidade: niteroi, vagas: 40 },
	{ codigo: 241,nome: 'Física - Licenciatura', unidade: niteroi, vagas: 40 },
	{ codigo: 140,nome: 'Física - Licenciatura Noturna', unidade: niteroi, vagas: 48 },
	{ codigo: 142,nome: 'Geofísica', unidade: niteroi, vagas: 34 },
	{ codigo: 225,nome: 'Letras - Português/Alemão - Licenciatura', unidade: niteroi, vagas: 10 },
	{ codigo: 125,nome: 'Letras - Bacharelado em Língua e Literatura Alemã', unidade: niteroi, vagas: 6 },
	{ codigo: 226,nome: 'Letras - Português/Espanhol - Licenciatura', unidade: niteroi, vagas: 35 },
	{ codigo: 227,nome: 'Letras - Português/Francês - Licenciatura', unidade: niteroi, vagas: 25 },
	{ codigo: 127,nome: 'Letras - Bacharelado em Língua e Literatura Francesa', unidade: niteroi, vagas: 10 },
	{ codigo: 228,nome: 'Letras - Português/Grego - Licenciatura', unidade: niteroi, vagas: 13 },
	{ codigo: 128,nome: 'Letras - Bacharelado em Língua e Literatura Grega', unidade: niteroi, vagas: 7 },
	{ codigo: 229,nome: 'Letras - Português/Inglês - Licenciatura', unidade: niteroi, vagas: 28 },
	{ codigo: 230,nome: 'Letras - Português/Italiano - Licenciatura', unidade: niteroi, vagas: 14 },
	{ codigo: 130,nome: 'Letras - Bacharelado em Língua e Literatura Italiana', unidade: niteroi, vagas: 6 },
	{ codigo: 231,nome: 'Letras - Português/Latim - Licenciatura', unidade: niteroi, vagas: 20 },
	{ codigo: 143,nome: 'Matemática - Licenciatura Noturna', unidade: niteroi, vagas: 59 },
	{ codigo: 244,nome: 'Matemática - Licenciatura', unidade: niteroi, vagas: 67 },
	{ codigo: 144,nome: 'Matemática - Bacharelado', unidade: niteroi, vagas: 24 },
	{ codigo: 105,nome: 'Medicina', unidade: niteroi, vagas: 144 },
	{ codigo: 106,nome: 'Medicina Veterinária', unidade: niteroi, vagas: 96 },
	{ codigo: 107,nome: 'Nutrição', unidade: niteroi, vagas: 66 },
	{ codigo: 108,nome: 'Odontologia', unidade: niteroi, vagas: 72 },
	{ codigo: 122,nome: 'Pedagogia - Licenciatura', unidade: niteroi, vagas: 128 },
	{ codigo: 123,nome: 'Produção Cultural', unidade: niteroi, vagas: 58 },
	{ codigo: 109,nome: 'Psicologia', unidade: niteroi, vagas: 82 },
	{ codigo: 146,nome: 'Química - Licenciatura Noturna', unidade: niteroi, vagas: 26 },
	{ codigo: 247,nome: 'Química - Licenciatura', unidade: niteroi, vagas: 21 },
	{ codigo: 147,nome: 'Química - Bacharelado', unidade: niteroi, vagas: 17 },
	{ codigo: 148,nome: 'Química Industrial', unidade: niteroi, vagas: 38 },
	{ codigo: 149,nome: 'Relações Internacionais', unidade: niteroi, vagas: 90 },
	{ codigo: 138,nome: 'Sistemas de Informação', unidade: niteroi, vagas: 98 },
	{ codigo: 113,nome: 'Turismo', unidade: niteroi, vagas: 104 },	
	
	{ codigo: 401,nome: 'Pedagogia - Licenciatura', unidade: angra, vagas: 65 },
	
	{ codigo: 430,nome: 'Administração', unidade: itaperuna, vagas: 40 },
	
	{ codigo: 471,nome: 'Administração', unidade: macae, vagas: 40 },
	{ codigo: 472,nome: 'Ciências Contábeis', unidade: macae, vagas: 40 },
	{ codigo: 470,nome: 'Direito', unidade: macae, vagas: 112 },
	
	
	{ codigo: 350,nome: 'Administração Pública', unidade: voltaRedonda, vagas: 42 },
	{ codigo: 359,nome: 'Química com ênfase em Química Tecnológica - Bacharelado', unidade: voltaRedonda, vagas: 50 },
	{ codigo: 360,nome: 'Química - Licenciatura', unidade: voltaRedonda, vagas: 50 },
	{ codigo: 358,nome: 'Matemática ênfase em Matemática Computacional - Bacharelado', unidade: voltaRedonda, vagas: 114 },
	{ codigo: 352,nome: 'Administração', unidade: voltaRedonda, vagas: 98 },
	{ codigo: 351,nome: 'Ciências Contábeis', unidade: voltaRedonda, vagas: 98 },
	{ codigo: 357,nome: 'Física ênfase em Física Computacional - Bacharelado', unidade: voltaRedonda, vagas: 114 },
	{ codigo: 354,nome: 'Engenharia de Produção', unidade: voltaRedonda, vagas: 71 },
	{ codigo: 353,nome: 'Engenharia de Agronegócios', unidade: voltaRedonda, vagas: 71 },
	{ codigo: 361,nome: 'Direito', unidade: voltaRedonda, vagas: 66 },
	{ codigo: 355,nome: 'Engenharia Mecânica', unidade: voltaRedonda, vagas: 71 },
	{ codigo: 356,nome: 'Engenharia Metalúrgica', unidade: voltaRedonda, vagas: 71 },
	{ codigo: 362,nome: 'Psicologia', unidade: voltaRedonda, vagas: 66 },
	
	{ codigo: 371,nome: 'Biomedicina', unidade: novaFriburgo, vagas: 24 },
	{ codigo: 372,nome: 'Fonoaudiologia', unidade: novaFriburgo, vagas: 28 },
	{ codigo: 370,nome: 'Odontologia', unidade: novaFriburgo, vagas: 99 },
	
	{ codigo: 324,nome: 'Ciência da Computação', unidade: rioDasOstras, vagas: 56 },
	{ codigo: 321,nome: 'Psicologia', unidade: rioDasOstras, vagas: 64 },
	{ codigo: 320,nome: 'Enfermagem', unidade: rioDasOstras, vagas: 48 },
	{ codigo: 325,nome: 'Engenharia de Produção', unidade: rioDasOstras, vagas: 56 },
	{ codigo: 322,nome: 'Produção Cultural', unidade: rioDasOstras, vagas: 56 },
	{ codigo: 323,nome: 'Serviço Social', unidade: rioDasOstras, vagas: 56 },
	
	{ codigo: 440,nome: 'Ciências Contábeis', unidade: miracema, vagas: 40 },
	
	{ codigo: 302,nome: 'Ciências Econômicas', unidade: campos, vagas: 100 },
	{ codigo: 393,nome: 'Ciências Sociais - Bacharelado', unidade: campos, vagas: 48 },
	{ codigo: 303,nome: 'Ciências Sociais - Licenciatura', unidade: campos, vagas: 52 },
	{ codigo: 704,nome: 'Geografia - Licenciatura', unidade: campos, vagas: 65 },
	{ codigo: 304,nome: 'Geografia - Bacharelado', unidade: campos, vagas: 35 },
	{ codigo: 706,nome: 'História - Licenciatura', unidade: campos, vagas: 49 },
	{ codigo: 306,nome: 'História - Bacharelado', unidade: campos, vagas: 51 },
	{ codigo: 307,nome: 'Psicologia', unidade: campos, vagas: 100 },
	{ codigo: 305,nome: 'Serviço Social', unidade: campos, vagas: 96 },		
	
	{ codigo: 462,nome: 'Física - Licenciatura', unidade: padua, vagas: 70 },
	{ codigo: 461,nome: 'Matemática - Licenciatura', unidade: padua, vagas: 76 },
	{ codigo: 463,nome: 'Matemática Pura - Bacharelado', unidade: padua, vagas: 40 },
	{ codigo: 460,nome: 'Pedagogia - Licenciatura', unidade: padua, vagas: 108 }     
])

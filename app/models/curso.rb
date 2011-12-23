class Curso < ActiveRecord::Base
  	attr_accessor :txtFile
      
  	belongs_to :unidade
  	has_many :alunos
  
  	validates :nome,  :presence => true
  	validates :unidade,  :presence => true
  	validates :vagas,  :presence => true
  
  	def to_s
	    self.nome
  	end
  	
  	def self.process_file(file)   		
		file.open.each_line{ |s|
 			puts s #Fazer a logica para incluir os cursos e dar erro se naum conseguir
		}
		false		
	end
end

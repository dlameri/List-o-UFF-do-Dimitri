class Aluno < ActiveRecord::Base
  	belongs_to :curso
  	belongs_to :ano
  	has_many :notas
  
	def to_s
		self.nome
	end
end

class Ano < ActiveRecord::Base
	has_many :alunos
	has_many :cursos
	validates_uniqueness_of :ano	
	
	def to_s
		self.ano
	end
end

class Ano < ActiveRecord::Base
	has_many :alunos
	validates_uniqueness_of :ano	
	
	def to_s
		self.ano
	end
end

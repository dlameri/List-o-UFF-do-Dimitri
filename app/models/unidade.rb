class Unidade < ActiveRecord::Base
	has_many :cursos	
	validates_uniqueness_of :nome
	
	def to_s
		self.nome
	end	
end

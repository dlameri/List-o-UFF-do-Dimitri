class Disciplina < ActiveRecord::Base  
  has_many :notas
  validates_uniqueness_of :nome 
  
  def to_s
  	self.nome
  end
end

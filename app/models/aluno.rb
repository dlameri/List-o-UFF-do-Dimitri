class Aluno < ActiveRecord::Base
  belongs_to :curso
  has_many :notas
end

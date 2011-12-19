class Disciplina < ActiveRecord::Base
  belongs_to :unidade
  has_many :notas
end

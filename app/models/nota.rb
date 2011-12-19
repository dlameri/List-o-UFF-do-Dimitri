class Nota < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :disciplina
end

class AddExpToAluno < ActiveRecord::Migration
  def change
    add_column :alunos, :exp, :float
  end
end

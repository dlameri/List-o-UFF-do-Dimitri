class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.references :aluno
      t.references :disciplina
      t.float :pontuacao

      t.timestamps
    end
    add_index :nota, :aluno_id
    add_index :nota, :disciplina_id
  end
end

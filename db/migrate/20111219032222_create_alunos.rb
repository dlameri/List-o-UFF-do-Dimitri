class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.integer :matricula
      t.string :nome
      t.string :situacao
      t.references :curso

      t.timestamps
    end
    add_index :alunos, :curso_id
  end
end

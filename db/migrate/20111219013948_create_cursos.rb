class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.integer :vagas
      t.references :unidade

      t.timestamps
    end
    add_index :cursos, :unidade_id
  end
end

class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.integer :matricula
      t.string :nome
      t.string :situacao
      t.references :curso
      t.float :media
      t.float :c1
      t.float :red
      t.float :lpllp
      t.float :bio
      t.float :fis
      t.float :qui
      t.float :mat
      t.float :geo
      t.float :his
      t.float :filo
      t.float :est	

      t.timestamps
    end
    add_index :alunos, :curso_id
  end
end

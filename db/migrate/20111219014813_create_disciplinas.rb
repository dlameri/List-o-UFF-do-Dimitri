class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :vagas
      t.boolean :ep
      t.boolean :ce    
      t.boolean :bonus

      t.timestamps
    end
  end
end

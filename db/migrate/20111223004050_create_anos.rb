class CreateAnos < ActiveRecord::Migration
  def change
    create_table :anos do |t|
      t.integer :ano
      t.boolean :atual
      t.boolean :pronto

      t.timestamps
    end
  end
end

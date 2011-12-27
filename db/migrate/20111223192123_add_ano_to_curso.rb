class AddAnoToCurso < ActiveRecord::Migration
  def change
    change_table :cursos do |t|
		t.references :ano
	end
	add_index :cursos, :ano_id
  end
end

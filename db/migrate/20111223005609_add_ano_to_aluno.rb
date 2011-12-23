class AddAnoToAluno < ActiveRecord::Migration
  def change
    change_table :alunos do |t|
		t.references :ano
	end
	add_index :alunos, :ano_id
  end
end

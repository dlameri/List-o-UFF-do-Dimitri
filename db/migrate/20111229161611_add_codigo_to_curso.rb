class AddCodigoToCurso < ActiveRecord::Migration
  def change
    add_column :cursos, :codigo, :integer
  end
end

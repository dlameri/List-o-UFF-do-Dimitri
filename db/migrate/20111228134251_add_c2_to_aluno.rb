class AddC2ToAluno < ActiveRecord::Migration
  def change
    add_column :alunos, :c2, :float
  end
end

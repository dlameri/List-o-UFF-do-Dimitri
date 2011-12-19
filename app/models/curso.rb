class Curso < ActiveRecord::Base
  belongs_to :unidade
  
  validates :name,  :presence => true
end

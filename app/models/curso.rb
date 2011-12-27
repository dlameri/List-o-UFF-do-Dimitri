class Curso < ActiveRecord::Base
   	belongs_to :unidade
  	belongs_to :ano
  	has_many :alunos
  
  	validates :nome,  :presence => true
  	validates :unidade,  :presence => true
  	validates :vagas,  :presence => true
  	validates :ano,  :presence => true
  
  	def to_s
	    self.nome
  	end
  	
  	def self.process_file(file, year)
        ano = Ano.find_by_id(year)
        Curso.delete_all("ano_id = " + year)        
        contador = 1
        file.open.each_line{ |s|
            s.strip!
            if ( s =~ /^\s*([^\(\)]+)\s*\(([^\(\)]*)\)[\*nov]{0,5}.*[\w]{2}\s*([\d]{1,3})$/iu )
                curso = Curso.new do |c|
                    c.nome = $1
                    c.unidade = Unidade.find_by_nome(($2.empty?) ? "Niteroi" : $2)
                    c.vagas = $3
                    c.ano = ano
                end

                curso.save
            end
  		}
	end
end

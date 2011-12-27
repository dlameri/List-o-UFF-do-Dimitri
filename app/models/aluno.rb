class Aluno < ActiveRecord::Base
  	belongs_to :curso
  	belongs_to :ano
  	has_many :notas
  
	def to_s
		self.nome
	end

    def self.process_file(file, year)
        ano = Ano.find_by_id(year)
        Aluno.delete_all("ano_id = " + year)        
        contador = 1
        file.open.each_line{ |s|
            s.strip!
            if ( s =~ /^\s*([\D]*)\s*([\d]{9})\s*[HABILITADO]{10}\s*[31\/]{0,3}\s*[\w\d]{0,3}\s*[\d]{0,2}\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*$/iu )
                

                aluno = Aluno.new do |a|
                    a.nome = $1
                    a.matricula = $2    
                    a.ano = ano
                    a.situacao = "APROVADO"

                    
                    
                end

                aluno.save
            end
  		}
	end
end

class Aluno < ActiveRecord::Base
  	belongs_to :curso
  	belongs_to :ano  	
  
	def to_s
		self.nome
	end

    def self.process_file_primeira_fase(file, year)
        ano = Ano.find_by_id(year)
        Aluno.delete_all("ano_id = " + year)        
        contador = 0
        file.open.each_line{ |s|        	
            s.strip!            
            if ( s =~ /^\s*([\D]*)\s*([\d]{9})\s*[HABILITADO]{10}\s*[31\/]{0,3}\s*[\w\d]{0,3}\s*[\d]{0,2}\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*$/iu )            
                aluno = Aluno.new do |a|
                    a.nome = $1
                    a.matricula = $2    
                    a.ano = ano
                    a.situacao = "APROVADO"
                    a.bio = $3
	                a.fis = $4
	                a.geo = $5
	                a.his = $6
	                a.lpllp = $7
	                a.mat = $8
	                a.qui = $9
	                a.filo = $10
	                a.est = $12
                end
                
                aluno.save
                
                contador += 1
                print ">>>>>>>>>>>>>#{contador}<<<<<<<<<<<<<<<<<"
            end            
  		}  		  		
	end
	
	def self.process_file_segunda_fase(file, year)
        ano = Ano.find_by_id(year)
        Aluno.delete_all("ano_id = " + year)        
        contador = 0
        file.open.each_line{ |s|        	
            s.strip!            
            if ( s =~ /^\s*([\D]*)\s*([\d]{9})\s*[HABILITADO]{10}\s*[31\/]{0,3}\s*[\w\d]{0,3}\s*[\d]{0,2}\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*([\d]{1,2})\s*$/iu )            
            	aluno = Aluno.find_by_matricula($1)
            	aluno.red = $2
            	aluno.c1 = $3
            	aluno.c2 = $4
            	#Pensar no caso de alunos com the
            	
            	self.calculate_media(aluno)                                            
                
                aluno.save
                
                contador += 1
                print ">>>>>>>>>>>>>#{contador}<<<<<<<<<<<<<<<<<"
            end            
  		}
	end
	
	def self.calculate_media(aluno) 
		
	end
end

class Aluno < ActiveRecord::Base
  	belongs_to :curso
  	belongs_to :ano  	
    
    default_scope  :order => [:media, :c1]
    
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
        niteroi = Unidade.find_by_nome("Niteroi")
        cursoAtual = nil
        file.open.each_line{ |s|
            if s =~ /(\s*([\d]{9})\s*([\d\.]+)\s*([\d\.]+)\s*([\d\.]+)\s*)/ then
                3.times { |i|
                    line = s.strip
                    if line =~ /(\s*([\d]{9})\s*([\d\.]+)\s*([\d\.]+)\s*([\d\.]+)\s*([\d]{1,2}[\.]{1}[\d]{1,2}\s*)?\s*)/ then
                        alunoAtual = Aluno.find_by_matricula($2.strip)
                        alunoAtual.red = $3.strip
                        alunoAtual.c1 = $4.strip
                        alunoAtual.c2 = $5.strip
                        unless $6.nil?
                            alunoAtual.exp = $6.strip
                        end
                        alunoAtual.curso = cursoAtual
                        
                        alunoAtual.media = self.calculate_media(alunoAtual)                        

                        alunoAtual.save

                        s = s.gsub($1, "")                
                    end            
                }
            elsif s =~ /\s*[CURSO\:]{6}\s*([\d]{3})\s*.*/ then
                cursoAtual = Curso.find_by_codigo($1.strip)
            end            
  		}

        self.marca_como_reprovado()
	end
	
	def self.calculate_media(aluno) 
		e1 = (7 * (aluno.lpllp + aluno.bio + aluno.fis + aluno.qui + aluno.mat + aluno.geo + aluno.his + aluno.filo + aluno.est)) / 15
        if aluno.exp.nil?
            e2 = (13 * (aluno.red + aluno.c1 + aluno.c2)) / 6
        else
            e2 = ((13 * (aluno.red + aluno.exp))/ 6) + ((13 * (aluno.c1 + aluno.c2)) / 12)
        end

        e1+e2
	end

    def self.marca_como_reprovado() 
        Aluno.find_each do |aluno|
            if (aluno.c1.nil? || aluno.c1 == 0.0 || aluno.red == 0.0 || aluno.c2 == 0.0 || (! aluno.exp.nil? && aluno.exp == 0.0))
                aluno.situacao = "ELIMINADO"
            else
                aluno.situacao = "APROVADO"
            end

            aluno.save
        end
    end
end

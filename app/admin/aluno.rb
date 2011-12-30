ActiveAdmin.register Aluno do
	menu :label => "Candidatos"
    form :partial => "form"
	
	controller do
	    def create    		
            unless (params[:aluno].nil?)    	    	
    	    	@fileParam1fase = params[:aluno][:txtFile1fase]
	        	@fileParam2fase = params[:aluno][:txtFile2fase]
            end
    		if ! @fileParam1fase.nil? then
      			if Aluno.process_file_primeira_fase(@fileParam1fase)
					flash[:notice] = "Arquivo incluido com sucesso !"
      				redirect_to :action => :index
				else
      				flash[:alert] = "Ocorreu um erro ao tentar incluir o arquivo"
      				redirect_to :action => :new
				end
			elsif ! @fileParam2fase.nil? then                
				if Aluno.process_file_segunda_fase(@fileParam2fase)
					flash[:notice] = "Arquivo incluido com sucesso !"
      				redirect_to :action => :index
				else
      				flash[:alert] = "Ocorreu um erro ao tentar incluir o arquivo"
      				redirect_to :action => :new
				end
            else
                Aluno.marca_como_reprovado()
  				redirect_to :action => :index
    		end
  		end
  	end
end

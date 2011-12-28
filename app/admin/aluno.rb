ActiveAdmin.register Aluno do
	menu :label => "Candidatos"
    form :partial => "form"
	
	controller do
	    def create    		
	    	@year = params[:aluno][:ano_id]
	    	@fileParam1fase = params[:aluno][:txtFile1fase]
	    	@fileParam1fase = params[:aluno][:txtFile2fase]
    		unless @fileParam1fase.nil?
      			if Aluno.process_file_primeira_fase(@fileParam1fase, @year)
					flash[:notice] = "Arquivo incluido com sucesso !"
      				redirect_to :action => :index
				else
      				flash[:alert] = "Ocorreu um erro ao tentar incluir o arquivo"
      				redirect_to :action => :new
				end
			else unless @fileParam2fase.nil?
				if Aluno.process_file_segunda_fase(@fileParam2fase, @year)
					flash[:notice] = "Arquivo incluido com sucesso !"
      				redirect_to :action => :index
				else
      				flash[:alert] = "Ocorreu um erro ao tentar incluir o arquivo"
      				redirect_to :action => :new
				end
    		end
  		end
  	end
end

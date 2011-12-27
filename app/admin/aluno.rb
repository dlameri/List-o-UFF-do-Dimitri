ActiveAdmin.register Aluno do
	menu :label => "Candidatos"
    form :partial => "form"
	
	controller do
	    def create    		
	    	@year = params[:aluno][:ano_id]
	    	@fileParam = params[:aluno][:txtFile]
    		if @fileParam.nil?
      			create!
      		else
      			if Aluno.process_file(@fileParam, @year)
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

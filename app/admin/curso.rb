ActiveAdmin.register Curso do
	menu :label => "Cursos"
	form :partial => "form"
	
	controller do
	    def create    		
	    	@fileParam = params[:curso][:txtFile]
	    	@year = params[:curso][:ano_id]

    		if @fileParam.nil?
      			create!
      		else
      			if Curso.process_file(@fileParam, @year)
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

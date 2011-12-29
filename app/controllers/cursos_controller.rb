class CursosController < ApplicationController
  # GET /cursos
  # GET /cursos.json
  def index
    @unidades = Unidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unidades }
    end
  end
end

class AlunosController < ApplicationController
  # GET /alunos/1
  # GET /alunos/1.json
  def show
    @curso = Curso.find(params[:id])
    @alunos = @curso.alunos.find(:all)

    @alunos.each do |aluno|
        puts aluno.nome
    end

    respond_to do |format|
      format.html # show.html.erb
    end
  end
end

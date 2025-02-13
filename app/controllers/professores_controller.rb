class ProfessoresController < ApplicationController
  def index
    @professores = Professor.all
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      redirect_to professores_path, notice: "Professor(a) cadastrado(a) com sucesso."
    else
      render :new
    end
  end

  def edit
    @professor = Professor.find(params[:id])
  end

  def update
    @professor = Professor.find(params[:id])

    if @professor.update(professor_params)
      redirect_to professores_path, notice: "Professor atualizado com sucesso!"
    else
      render :edit
    end
  end

  private

  def professor_params
    params.require(:professor).permit(:nome, :especializacao)
  end
end

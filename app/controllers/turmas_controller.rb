class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
  end

  def new
    @turma = Turma.new
  end

  def create
    @turma = Turma.new(turma_params)

    if @turma.save
      redirect_to turmas_path, notice: "Turma cadastrada com sucesso!"
    else
      flash.now[:alert] = "Erro ao cadastrar turma. Verifique os campos."
      render :new, status: :unprocessable_entity
    end
  end


  private
  def turma_params
    params.require(:turma).permit(:nome, :serie, :professor_id)
  end
end

class SalasController < ApplicationController
  def index
    @salas = Sala.all
  end

  def show
  end

  def new
    @sala = Sala.new
  end

  def create
    @sala = Sala.new(sala_params)

    if @sala.save
      redirect_to salas_path, notice: "Sala cadastrada com sucesso!"
    else
      render :new
    end
  end

  def edit
    @sala = Sala.foind(params[:id])
  end

  def update
    @salas = Sala.find(params[:id])

    if @sala.update(sala_params)
      redirect_to salas_path, notice: "Sala atualizada com sucesso!"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def sala_params
    params.require(:sala).permit(:numero, :capacidade, :turma_id)
  end
end

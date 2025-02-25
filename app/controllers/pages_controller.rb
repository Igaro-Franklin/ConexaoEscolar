class PagesController < ApplicationController
  def home
    @turmas = Turma.includes(:alunos, :professor, :sala).order(:nome)
  end
end

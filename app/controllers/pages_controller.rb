class PagesController < ApplicationController
  allow_unauthenticated_access only: :home
  def home
    @turmas = Turma.includes(:alunos, :professor, :sala).order(:nome)
  end
end

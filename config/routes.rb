Rails.application.routes.draw do
  root "pages#home"

  resources :alunos, only: [ :index, :new, :create ]
  resources :professor
  resources :materia
  resources :turma
  resources :sala

  # get 'dashboard', to: 'dashboard#index'
  # resources :alunos, :professores, :turmas, :materias, :salas
end

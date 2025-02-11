Rails.application.routes.draw do
  root "pages#home"

  resources :alunos, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :professor
  resources :materia
  resources :turmas, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :sala

  # get 'dashboard', to: 'dashboard#index'
  # resources :alunos, :professores, :turmas, :materias, :salas
end

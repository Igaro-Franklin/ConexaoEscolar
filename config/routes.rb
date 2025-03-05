Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  root "pages#home"

  resources :alunos, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :professores, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :materias, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :turmas, only: [ :index, :new, :create, :edit, :update, :destroy ]
  resources :salas, only: [ :index, :new, :create, :edit, :update, :destroy ]
end

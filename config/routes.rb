Rails.application.routes.draw do
  namespace :site do
    get  'welcome/index'
    get  'search', to: 'search#questions'
    # search#questions
    get  'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject' # as é um apelido
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit' # aponta para o controller profile dentro de user_backoffice 
    patch 'profile', to: 'profile#update'
    get 'zip_code', to: 'zip_code#show'
  end
  namespace :admins_backoffice do
    get 'welcome/index' # Dashboard
    resources :admins   # Administradores
    resources :subjects # Assuntos/Áreas
    resources :questions # Perguntas
  end

  devise_for :admins, skip:  [:registrations] # skip - cancela a rota registro
  devise_for :users

  get 'inicio', to: 'site/welcome#index'
  get 'backoffice', to: 'admins_backoffice/welcome#index'


  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

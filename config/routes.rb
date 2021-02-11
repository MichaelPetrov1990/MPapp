Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'questionnaire/:user_id', to: 'questionnaires#new', as: 'questionnaire'
  post 'questionnaire/:id', to: 'questionnaires#create'

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end
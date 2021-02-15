Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'questionnaire', to: 'questionnaires#show', as: 'questionnaire'
  post 'questionnaire', to: 'questionnaires#new'
  post 'questionnaire/:id', to: 'questionnaires#create'

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end
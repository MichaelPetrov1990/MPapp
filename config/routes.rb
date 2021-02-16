Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'questionnaire', to: 'questionnaires#index', as: 'all-questionnaires'
  get 'questionnaire/:id', to: 'questionnaires#show', as: 'questionnaire'
  post 'questionnaire', to: 'questionnaires#new', as: "new_questionnaire"
  post 'questionnaire/:id', to: 'questionnaires#create'
  

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end
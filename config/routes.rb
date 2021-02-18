Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'questionnaires', to: 'questionnaires#index', as: "questionnaire_categories"
  get 'questionnaire/:category', to: 'questionnaires#new', as: "new_questionnaire"
  # post 'questionnaire/:id', to: 'questionnaires#create'
  # get 'questionnaire/:id', to: 'questionnaires#show', as: 'questionnaire'
  

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end
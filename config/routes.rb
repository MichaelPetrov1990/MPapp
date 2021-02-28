Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'questionnaires', to: 'questionnaires#index', as: "questionnaire_categories"
  get 'questionnaire/category/:category', to: 'questionnaires#new', as: "new_questionnaire"
  post 'questionnaire/:category/:id', to: 'answers#create'
  # get 'questionnaire/:id', to: 'questionnaires#show', as: 'questionnaire'
  get 'plan', to: 'plans#show'


  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end

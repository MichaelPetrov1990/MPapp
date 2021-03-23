Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'questionnaires', to: 'questionnaires#new', as: "new_questionnaire"
  post 'questionnaires', to: 'answers#create'
  get 'questions', to: 'questions#index'
  get 'plan', to: 'plans#show'

  get 'admin/questions', to: 'admin#questions'
  post 'admin/question/:id', to: 'admin#question', as: "admin_question"
  post 'admin/questions', to: 'admin#create'
  get 'admin/users', to: 'admin#users'

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end

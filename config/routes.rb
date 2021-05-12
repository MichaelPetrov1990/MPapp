Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#about'
  get 'questionnaires', to: 'questionnaires#new', as: "new_questionnaire"
  post 'questionnaires', to: 'answers#create'
  get 'questions', to: 'questions#index'
  get 'plan', to: 'answers#show'

  get 'questionnaires/weightings', to: 'answers#show'
  patch 'answers', to: 'answers#update'

  get 'admin/questions', to: 'admin#questions'
  post 'admin/question/:id', to: 'admin#question', as: "admin_question"
  post 'admin/questions', to: 'admin#create'
  get 'admin/users', to: 'admin#users'

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
  get 'user', to: 'users#index'
  
  # error handling
  ## redirect to root
  
  get '*path' => 'pages#about', constraints: -> (req) { req.fullpath.start_with?('/users') }

 end
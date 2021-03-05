Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'questionnaires', to: 'questionnaires#index', as: "questionnaire_categories"
  get 'questionnaire/category/:category', to: 'questionnaires#new', as: "new_questionnaire"
  post 'questionnaire/:category/:id', to: 'answers#create'
  get 'questions', to: 'questions#index'
  get 'plan', to: 'plans#show'

  get 'admin/questions', to: 'admin#questions'
  get 'admin/questions/:id/edit', to: 'questions#edit', as: 'admin_edit'
  patch 'admin/questions/:id', to: 'questions#update'
  get 'admin/users', to: 'admin#users'

  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
 end

Rails.application.routes.draw do
  # get 'questionnaires/show'
  # get 'questionnaires/new'
  # get 'questionnaires/create'
  # get 'questionnaires/edit'
  # get 'questionnaires/update'
  # get 'plans/show'
  # get 'plans/new'
  # get 'plans/create'
  # get 'plans/edit'
  # get 'plans/update'
  # get 'scorecards/show'
  # get 'scorecards/new'
  # get 'scorecards/create'
  # get 'scorecards/edit'
  # get 'scorecards/update'
  # get 'scorecards/delete'
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
  resources :questionnaire, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :plan, only: [:show, :new, :create, :edit, :update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

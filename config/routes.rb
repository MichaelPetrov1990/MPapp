Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'faqs', to: 'pages#faqs'
  resources :questionnaires do
    resources :questions do
      resources :answers
    end
  end

  resources :plan, only: [:show, :new, :create, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

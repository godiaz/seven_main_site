Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users, path_names: { sign_in: 'login' }
  get :privacy, to: 'pages#privacy', as: :privacy
  get :contact, to: 'pages#contact'
  post :contact, to: 'pages#mail_contact'
  get :services, to: 'pages#services'
  resources :projects, only: %i[index show]
  namespace :admin do
    authenticate :user, ->(user) { user.admin? } do
      resources :projects do
        member do
          patch 'publish', to: 'projects#publish'
        end
      end
      resources :services
    end
    authenticated do
      root to: 'projects#index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

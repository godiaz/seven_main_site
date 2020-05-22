Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login' }
  resources :projects, only: %i[index show]
  namespace :admin do
    authenticate :user, ->(user) { user.admin? } do
      resources :projects do
        member do
          patch 'publish', to: 'projects#publish'
        end
      end
    end
    authenticated do
      root to: 'projects#index'
    end
  end
  unauthenticated do
    root to: 'pages#home'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

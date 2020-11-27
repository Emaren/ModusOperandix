Rails.application.routes.draw do


# root to: "/users/sign_in"

#  devise_scope :user do
#  root to: "devise/sessions#new"
#end

#  devise_for :users


  devise_for :users, path: 'users'

  devise_scope :user do
    authenticated :user do
      root 'projects#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :projects do
    resources :tasks
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end   #devise_for :user

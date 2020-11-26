Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#devise_for :user
root to: "projects#index"
end

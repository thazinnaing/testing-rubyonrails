Rails.application.routes.draw do
  resources :users
  root "articles#index"

  resources :articles do
    resources :comments
  end
end

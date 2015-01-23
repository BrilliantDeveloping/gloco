Rails.application.routes.draw do
  resources :organizations

  devise_for :users
  resources :users
  authenticated do
    root 'application#index', as: :authenticated
  end
  root 'application#landing'
end

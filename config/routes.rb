Rails.application.routes.draw do
  root 'welcome#index'
  resources :night, only: [:index]
end

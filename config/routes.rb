Rails.application.routes.draw do
  root 'welcome#index'
  resources :decathlon, only: [:index]
  resources :hepsiburada, only: [:index]
  get 'hepsiburada/two', to: 'hepsiburada#two'
  get 'hepsiburada/three', to: 'hepsiburada#three'
end

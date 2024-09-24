Rails.application.routes.draw do
  devise_for :users
  root "notes#index"

  resources :notes
  resources :images

  get 'about', to: 'static_pages#about'
  get 'contacts', to: 'static_pages#contacts'
  get 'faq', to: 'static_pages#faq'
end
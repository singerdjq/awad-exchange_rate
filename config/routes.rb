Rails.application.routes.draw do
  resources :gbp_usds
  get 'users/new'
  root 'static_pages#home'
   get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

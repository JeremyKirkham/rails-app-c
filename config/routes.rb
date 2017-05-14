Rails.application.routes.draw do

  resources :users do
    resources :blogposts
  end

  root 'static_pages#home'
  get '/contact-us', to: 'static_pages#contact'
  get '/about-us', to: 'static_pages#about'

  get    '/signup',  to: 'users#signup'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

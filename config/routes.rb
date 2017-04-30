Rails.application.routes.draw do
  root 'static_pages#home'
  get '/contact-us', to: 'static_pages#contact'
  get '/about-us', to: 'static_pages#about'
  get '/hello', to: 'static_pages#helloworld'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

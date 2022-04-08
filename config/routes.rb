Rails.application.routes.draw do
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/messages#random_message"
  namespace :api do
    namespace :v1 do
      get '/messages/random_message', to: 'messages#random_message'
    end
  end
end

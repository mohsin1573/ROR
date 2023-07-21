Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
    # Create a new user
  post '/users', to: 'users#create', as: 'create_user'

  # Edit a user
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  # Update a user
  patch '/users/:id', to: 'users#update', as: 'update_user'
end

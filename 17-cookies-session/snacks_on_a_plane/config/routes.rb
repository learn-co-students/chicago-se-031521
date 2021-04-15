Rails.application.routes.draw do
  resources :user_snacks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/snacks', to: 'snacks#index', as: 'snacks'
  get '/snacks/new', to: 'snacks#new', as: 'new_snack'
  get '/snacks/:id', to: 'snacks#show', as: 'snack'
  get '/snacks/:id/edit', to: 'snacks#edit', as: 'edit_snack'

  post '/snacks', to: 'snacks#create'
  patch '/snacks/:id', to: 'snacks#update'
  delete '/snacks/:id', to: 'snacks#destroy'

  # does all the work of ☝🏽 in one line
  resources :users
  delete 'reset_views', to: 'sessions#reset_views', as: 'reset'

end

## path helper
# snacks_path --> '/snacks'
# snack_path --> '/snacks/:id' (/snacks/8)
# new_snack_path --> '/snacks/new'
# edit_snack_path --> '/snacks/:id/edit' (/snacks/8/edit)
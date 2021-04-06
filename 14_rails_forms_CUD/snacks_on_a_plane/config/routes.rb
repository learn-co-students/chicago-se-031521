Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/snacks', to: 'snacks#index', as: 'snacks'
  get '/snacks/new', to: 'snacks#new', as: 'new_snack'
  get '/snacks/:id', to: 'snacks#show', as: 'snack'
  get '/snacks/:id/edit', to: 'snacks#edit', as: 'edit_snack'

  post '/snacks', to: 'snacks#create'
  patch '/snacks/:id', to: 'snacks#update'
  delete '/snacks/:id', to: 'snacks#destroy'
end

## path helper
# snacks_path --> '/snacks'
# snack_path --> '/snacks/:id' (/snacks/8)
# new_snack_path --> '/snacks/new'
# edit_snack_path --> '/snacks/:id/edit' (/snacks/8/edit)
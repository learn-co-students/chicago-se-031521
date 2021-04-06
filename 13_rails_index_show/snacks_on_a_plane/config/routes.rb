Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/snacks', to: 'snacks#index', as: 'snacks'
  get '/snacks/:id', to: 'snacks#show', as: 'snack'

end

## path helper
# snacks_path --> '/snacks'
# snack_path --> '/snacks/:id' (/snacks/8)
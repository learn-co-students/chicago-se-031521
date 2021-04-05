Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # type of request 'route', mapping to the controller and method/action to execute 
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'

end

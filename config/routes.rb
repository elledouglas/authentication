Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resource :users, only: %i(create new) #same as [:create, :new]
resource :sessions, only: %i(create new destroy)

  root 'rides#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

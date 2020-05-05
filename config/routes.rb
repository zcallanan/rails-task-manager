Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index', to: 'tasks#index'
  post '/tasks', to: 'tasks#create'
  get "/tasks/new", to: "tasks#new", as: :new_task
  get "/tasks/:id", to: "tasks#show", as: :task
  patch "/tasks/:id", to: "tasks#update"
  delete "/tasks/:id", to: "tasks#destroy"
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
end

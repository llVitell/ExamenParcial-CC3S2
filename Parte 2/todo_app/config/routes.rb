Rails.application.routes.draw do
  resources :todos
  get '/hello', to: 'todos#hello'
  root :to => redirect('/todos')
end

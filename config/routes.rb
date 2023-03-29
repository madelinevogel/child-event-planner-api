Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/children" => "children#index"
  post "/children" => "children#create"
  post "/children/:id" => "children#show"

  get "/events" => "events#index"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
end

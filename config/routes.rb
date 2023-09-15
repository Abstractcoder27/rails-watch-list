Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get "lists", to: "list#show"
# get "lists/:id", to: "list#show"
# get "lists/new", to: "list#new"
# post "lists", to: "list#create"

  resources :lists
  resources :bookmarks
  # Defines the root path route ("/")
  # root "articles#index"
end

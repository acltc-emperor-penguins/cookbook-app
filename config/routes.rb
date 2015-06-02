Rails.application.routes.draw do
  get "/" => 'recipes#index'
  get "/recipes" => 'recipes#index'
  get "/recipes/new" => 'recipes#new'
  get "/recipes/:id" => 'recipes#show'
  post "/recipes" => 'recipes#create'
  get "/recipes/:id/edit" => 'recipes#edit'
end

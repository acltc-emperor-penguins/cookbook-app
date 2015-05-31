Rails.application.routes.draw do
  get "/recipes" => 'recipes#index'
  get "/recipes/:id" => 'recipes#show'
end

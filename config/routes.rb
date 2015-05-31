Rails.application.routes.draw do
  get "/recipes" => 'recipes#index'
end

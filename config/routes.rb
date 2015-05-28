Rails.application.routes.draw do
  get "/" => 'recipes#home'
  get "/all" => 'recipes#all'
end

class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end
end

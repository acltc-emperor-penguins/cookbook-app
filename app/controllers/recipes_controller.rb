class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end

  def new
  end

  def create
    Recipe.create(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
  end

  def edit
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end

  def update
    recipe_id = params[:id]
    recipe = Recipe.find_by(id: recipe_id)
    recipe.update(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
  end

end

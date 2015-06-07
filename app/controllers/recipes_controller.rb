class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
    if params[:sort] #"prep_time"
      @recipes = Recipe.order(params[:sort])
    end
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    @ingredients = @recipe.ingredients_list
    @directions = @recipe.directions_list
  end

  def new
  end

  def create
    recipe = Recipe.create(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    flash[:success] = "Recipe created!"
    flash[:purple_hippo] = "Purple Hippo!"
    redirect_to "/recipes/#{recipe.id}"
  end

  def edit
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
  end

  def update
    recipe_id = params[:id]
    recipe = Recipe.find_by(id: recipe_id)
    recipe.update(title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions])
    flash[:success] = "Recipe updated!"
    redirect_to "/recipes/#{recipe_id}"
  end

  def destroy
    recipe_id = params[:id]
    recipe = Recipe.find_by(id: recipe_id)
    recipe.destroy
    flash[:warning] = "Recipe deleted!"
    redirect_to "/"
  end

end

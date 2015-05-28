class RecipesController < ApplicationController
  def home
    @recipe = Recipe.last
  end

  def all
    @recipes = Recipe.all
  end
end

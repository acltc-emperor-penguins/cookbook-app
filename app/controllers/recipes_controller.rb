class RecipesController < ApplicationController
  def home
    @recipe = Recipe.last
  end
end

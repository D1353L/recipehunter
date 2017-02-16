class RecipesController < ApplicationController
  def index
    request = params.include?(:search) ? params[:search] : 'chocolate'
    @recipes = Recipe.for(request) || []
  end
end

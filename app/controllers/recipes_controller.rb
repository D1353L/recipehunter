class RecipesController < ApplicationController
  def index
    request = params.include?(:search) ? params[:search] : 'chocolate'
    @resipes = Recipe.for(request)
  end
end

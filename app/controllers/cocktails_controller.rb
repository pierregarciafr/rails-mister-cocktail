class CocktailsController < ApplicationController

  # user can see list of cocktails
  def index
    @cocktails = Cocktail.all
  end

  # user can see details of a given cocktail
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  # user can create a new cocktail

end

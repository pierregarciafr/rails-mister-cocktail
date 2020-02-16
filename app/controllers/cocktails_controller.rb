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
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end

end

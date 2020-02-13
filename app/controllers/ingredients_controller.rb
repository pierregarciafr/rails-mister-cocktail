class IngredientsController < ApplicationController

  # generate List of ingredients : as a dropdown
  def index # ROUTED :)
    @ingredients = Ingredient.all
  end


  # create new : IMPOSSOBLE

  # update : NO !!

  # delete : tampoco !!!

end

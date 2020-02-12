class FoodController < ApplicationController
  def new
    @menuitem = Food.new
  end

  def create
    @menuitem = Food.new(user_params)
    @menuitem.save


  end
  def user_params
    params.require(:menuitem).permit(:name, :description)
  end

end


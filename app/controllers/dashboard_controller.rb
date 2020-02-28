class DashboardController < ApplicationController
  before_action :authenticate_user!

  # GET /foods
  # GET /foods.json
  def index
    @call = Call.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @call = Call.find(params[:id])
  end

end

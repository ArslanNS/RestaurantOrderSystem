class ManagerController < ApplicationController
  before_action :authenticate_user!

  # GET /foods
  # GET /foods.json
  def index
    @calls = Call.all
    @orders = Order.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end
end

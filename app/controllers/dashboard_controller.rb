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

  def update
    @call = Call.find_by(:id)
    if @call.update(call_params)
      @updated = "true"
    else
      @updated = "false"
    end
  end

  private
  def call_params
    params.require(:call)
  end

end

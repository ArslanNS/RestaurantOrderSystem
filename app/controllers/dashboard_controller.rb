class DashboardController < ApplicationController
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

  def update
    @call = Call.find(params[:id])

    if @call.update(attended: true)
      redirect_to dashboard_index_path
    end
  end

  private
  def call_params
    params.require(:call).permit(:id)
  end

end

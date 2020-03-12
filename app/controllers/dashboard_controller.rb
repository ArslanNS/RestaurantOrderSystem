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



  def confirm
    @order = Order.find(params[:id])

    if @order.update(status_id: 1 )

      redirect_to orders_index_path
    end
  end

  helper_method :confirm



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

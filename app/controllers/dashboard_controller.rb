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



  def confirm(ordersss)
    orderid = ordersss
    orderid.to_i
    currentorder = Order.find(orderid)
    currentorder.status_id = 1
    currentorder.save

  end

  helper_method :confirm

  def create
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

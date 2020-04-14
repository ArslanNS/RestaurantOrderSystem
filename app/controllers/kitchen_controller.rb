class KitchenController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
    @tables = Table.all
    @orderCount = Order.new
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  def update
    @order = Order.find(params[:id])
    if @order.status.name == "confirmed"; newStatus = Status.create(name: "cooking")
    elsif @order.status.name == "cooking"; newStatus = Status.create(name: "ready")
    elsif @order.status.name == "ready"; newStatus = Status.create(name: "served")
    end
    if @order.update(status: newStatus)
      redirect_to request.referrer
    end
  end
end

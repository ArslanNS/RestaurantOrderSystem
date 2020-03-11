class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all.order("created_at DESC")
  end

  def update
    @orders = Order.all
    @status = @orders.status
  end
end

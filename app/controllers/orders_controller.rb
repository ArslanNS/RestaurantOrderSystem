class OrdersController < ApplicationController
  def index
    @orders = Order.where(table: current_user.table)
  end
end

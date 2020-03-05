class OrdersController < ApplicationController
  def index
    @orders = Order.where(table: current_user.table)
  end

  def create
    @order = Order.new(order_params)

    @order.save

    redirect_to menu_index_path
  end

  def destroy
    @order = Order.find(params[:id])

    @order.update(status_id: 5)

    redirect_to orders_index_path
  end

  private
  def order_params
    params.require(:order).permit(:table_id, :food_id, :requests, :status_id)
  end
end
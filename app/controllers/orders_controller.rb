class OrdersController < ApplicationController
  def index
    current_table = current_user.table
    current_bill_id = current_table.current_bill_id

    @current_bill = Bill.where(id: current_bill_id)

    @orders = Order.where(table: current_table, bill_id: current_bill_id)

  end

  def create
    @order = Order.new(order_params)

    # Set bill id to the current bill of the table
    current_bill_id = @order.table.current_bill_id
    @order.bill_id = current_bill_id

    @order.save

    redirect_to menu_index_path
  end

  def destroy
    @order = Order.find(params[:id])

    # Set order status to CANCELLED
    @order.update(status_id: 5)

    redirect_to orders_index_path
  end

  private
  def order_params
    params.require(:order).permit(:table_id, :food_id, :requests, :status_id)
  end
end

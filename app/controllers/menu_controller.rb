class MenuController < ApplicationController
  def index

    # Get objects for display on views
    @call = Call.new
    @foods = Food.all
    @sections = Section.all
    @order = Order.new

    # Get table and bill based on current user
    current_table = current_user.table
    current_bill_id = current_table.current_bill_id

    # Get current bill object for display on views
    @current_bill = Bill.find(current_bill_id)

  end

  def create
    @call = Call.new(call_params)

    @call.save
  end

  private
  def call_params
    params.require(:call).permit(:table_id)
  end
end

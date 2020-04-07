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

  def numbering(table_number)
    @waiter_table = table_number
    if @waiter_table == table_number

    end
    puts "AHAHAHHAHAHHA"
    puts @waiter_table.inspect
    puts "AHAHAHHAHAHHA"




  end

  helper_method :numbering


  def confirm(order)
    if Order.update(order,:status_id => 2)
    end
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

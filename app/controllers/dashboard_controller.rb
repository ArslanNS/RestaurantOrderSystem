class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all.order("created_at DESC")
  end

  private

  def call_params
    params.require(:call).permit(:table_id)
  end

end

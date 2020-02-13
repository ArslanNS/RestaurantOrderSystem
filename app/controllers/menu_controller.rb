class MenuController < ApplicationController
  def index
    @call = Call.new
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

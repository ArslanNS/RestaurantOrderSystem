class KitchenController < ApplicationController
  before_action :authenticate_user!

  def index
    @tables = Table.all
      #@orders = Order.all
  end
end

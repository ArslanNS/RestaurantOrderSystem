class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @calls = Call.all
  end
end

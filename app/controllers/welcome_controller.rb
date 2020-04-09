class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @call = Call.new
  end
end
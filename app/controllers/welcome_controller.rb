class WelcomeController < ApplicationController
  def index
    @call = Call.new
  end
end

class EmployeeController < ApplicationController
  def index
    @users = User.all
  end
end

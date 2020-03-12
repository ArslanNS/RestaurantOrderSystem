class BillingController < ApplicationController
  before_action :authenticate_user!

  def new_card
    respond_to do |format|
      format.js
    end
  end
end

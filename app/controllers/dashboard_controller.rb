class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def customer
    @bid = current_user.bids.new(params[:bid])
  end


  def dealer
  end
end

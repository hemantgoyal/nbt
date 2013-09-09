class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def customer
    @bid = current_user.created_bids.new(params[:bid])
    @bids = current_user.created_bids
    @users = User.all
  end


  def dealer
  end
end

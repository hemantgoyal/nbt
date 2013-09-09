class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def customer
    @bid = current_user.created_bids.new()
    @bids = current_user.created_bids
    @users = User.all
    @counter_offers = CounterBid.where(:bid_id => current_user.created_bids)
  end


  def dealer
    @bids = current_user.customer_bids
    @counter_bid = current_user.counter_bids.new()    
  end
end

class Bid < ActiveRecord::Base
  attr_accessible :bid_time, :buy, :comment, :down_payment, :finance, :lease, :max_miles, :monthly_payment, :no_of_month, :save_bid, :user_id, :customer_id, :dealer_id
#  belongs_to :user
  belongs_to :customer, :class_name => 'User'
  has_many :counter_bids
  belongs_to :dealer, :class_name => 'User'
end

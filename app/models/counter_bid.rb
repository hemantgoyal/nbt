class CounterBid < ActiveRecord::Base
  attr_accessible :bid_id, :bid_time, :buy, :comment, :confirmation_no, :down_payment, :finance, :lease, :max_miles, :monthly_payment, :no_of_month, :save, :user_id, :dealer_id
# belongs_to :user
  belongs_to :dealer, :class_name => 'User'
  belongs_to :bid
end

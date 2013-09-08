class Bid < ActiveRecord::Base
  attr_accessible :bid_time, :buy, :comment, :down_payment, :finance, :lease, :max_miles, :monthly_payment, :no_of_month, :save_bid, :user_id
  belongs_to :user
  has_many :user
end

class Bid < ActiveRecord::Base
  attr_accessible :bid_time, :buy, :comment, :down_payment, :finance, :lease, :max_miles, :monthly_payment, :no_of_month, :save, :user_id
end

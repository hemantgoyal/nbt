class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :user_id
      t.boolean :buy
      t.boolean :lease
      t.boolean :finance
      t.integer :monthly_payment
      t.integer :down_payment
      t.integer :no_of_month
      t.string :comment
      t.boolean :save_bid
      t.integer :max_miles
      t.integer :bid_time

      t.timestamps
    end
  end
end

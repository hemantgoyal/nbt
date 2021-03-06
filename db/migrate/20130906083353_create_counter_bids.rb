class CreateCounterBids < ActiveRecord::Migration
  def change
    create_table :counter_bids do |t|
      t.integer :user_id
      t.integer :bid_id
      t.boolean :buy
      t.boolean :lease
      t.boolean :finance
      t.integer :monthly_payment
      t.integer :down_payment
      t.integer :no_of_month
      t.string :comment
      t.boolean :save_cbid
      t.integer :max_miles
      t.integer :bid_time
      t.integer :confirmation_no
      t.integer :dealer_id

      t.timestamps
    end
  end
end

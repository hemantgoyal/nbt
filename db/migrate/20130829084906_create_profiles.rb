class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :image
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode, :limit => 8
      t.integer :phone, :limit => 8
      t.integer :fax, :limit => 8
      t.integer :social_security_no
      t.integer :user_id

      t.timestamps
    end
  end
end

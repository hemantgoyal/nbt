class CreateCarInfos < ActiveRecord::Migration
  def change
    create_table :car_infos do |t|
      t.integer :user_id
      t.string :make
      t.string :model
      t.date :model_year
      t.string :trim
      t.string :additional_feature
      t.string :car_image
      t.string :body_style
      t.integer :price
      t.integer :mileage
      t.string :exterior_color
      t.string :interior_color
      t.string :transmission
      t.string :engine

      t.timestamps
    end
  end
end

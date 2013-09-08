class CarInfo < ActiveRecord::Base
  attr_accessible :additional_feature, :body_style, :car_image, :engine, :exterior_color, :interior_color, :make, :mileage, :model, :model_year, :price, :transmission, :trim, :user_id
  belongs_to :user
end

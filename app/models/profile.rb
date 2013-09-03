class Profile < ActiveRecord::Base
  attr_accessible :city, :dob, :fax, :first_name, :image, :last_name, :phone, :social_security_no, :state, :street, :user_id, :zipcode
end

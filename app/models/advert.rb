class Advert < ActiveRecord::Base
  attr_accessible :title, :description, :main_image_id, :user_id, :category_id, :province_id, :city, :contact_phone, :contact_web, :contact_email
end

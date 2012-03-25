class CreateAdverts < ActiveRecord::Migration
  def self.up
    create_table :adverts do |t|
      t.string :title
      t.text :description
      t.integer :main_image_id
      t.integer :user_id
      t.integer :category_id
      t.integer :province_id
      t.string :city
      t.string :contact_phone
      t.string :contact_web
      t.string :contact_email
      t.timestamps
    end
  end

  def self.down
    drop_table :adverts
  end
end

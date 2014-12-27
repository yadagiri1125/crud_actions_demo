class CreateProduct < ActiveRecord::Migration
  def up
  	create_table :products do |t|      
    t.string :zip_code, :null => false
    t.float :latitude
    t.float :longitude
    t.string :country_code
    t.timestamps      
  end
  end

  def down
  	drop_table :products
  end
end

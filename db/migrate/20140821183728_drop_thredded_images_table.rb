class DropThreddedImagesTable < ActiveRecord::Migration
  def up
  	drop_table :thredded_images
  	drop_table :thredded_post_notifications
  end

  def down
  end	
end

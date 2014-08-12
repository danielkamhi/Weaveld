class AddFoodieToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :foodie, :boolean
  end
end

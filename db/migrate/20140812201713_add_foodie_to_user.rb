class AddFoodieToUser < ActiveRecord::Migration
  def change
    add_column :users, :foodie, :boolean
  end
end

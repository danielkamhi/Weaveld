class AddAdventureToUser < ActiveRecord::Migration
  def change
    add_column :users, :adventure, :boolean
  end
end

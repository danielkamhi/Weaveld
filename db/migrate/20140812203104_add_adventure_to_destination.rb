class AddAdventureToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :adventure, :boolean
  end
end

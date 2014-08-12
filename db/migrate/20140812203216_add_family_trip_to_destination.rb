class AddFamilyTripToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :family_trip, :boolean
  end
end

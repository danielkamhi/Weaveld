class AddFamilyTripToUser < ActiveRecord::Migration
  def change
    add_column :users, :family_trip, :boolean
  end
end

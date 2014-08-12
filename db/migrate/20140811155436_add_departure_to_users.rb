class AddDepartureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :departure, :datetime
  end
end

class AddArrivalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :arrival, :datetime
  end
end

class CreateUserDestinations < ActiveRecord::Migration
  def change
    create_table :user_destinations do |t|
      t.references :user, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end

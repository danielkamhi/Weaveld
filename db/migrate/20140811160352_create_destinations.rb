class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :body
      t.string :city

      t.timestamps
    end
  end
end

class AddCultureToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :culture, :boolean
  end
end

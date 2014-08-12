class AddPerformancesToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :performances, :boolean
  end
end

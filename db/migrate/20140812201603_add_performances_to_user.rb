class AddPerformancesToUser < ActiveRecord::Migration
  def change
    add_column :users, :performances, :boolean
  end
end

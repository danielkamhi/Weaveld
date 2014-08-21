class AddEuropeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :europe, :boolean
  end
end

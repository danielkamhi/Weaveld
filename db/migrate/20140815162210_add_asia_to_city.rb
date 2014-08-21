class AddAsiaToCity < ActiveRecord::Migration
  def change
    add_column :cities, :asia, :boolean
  end
end

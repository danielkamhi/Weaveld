class AddAustraliaToCity < ActiveRecord::Migration
  def change
    add_column :cities, :australia, :boolean
  end
end

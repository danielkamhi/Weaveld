class AddAmericaToCity < ActiveRecord::Migration
  def change
    add_column :cities, :america, :boolean
  end
end

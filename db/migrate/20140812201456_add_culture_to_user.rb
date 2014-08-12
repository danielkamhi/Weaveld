class AddCultureToUser < ActiveRecord::Migration
  def change
    add_column :users, :culture, :boolean
  end
end

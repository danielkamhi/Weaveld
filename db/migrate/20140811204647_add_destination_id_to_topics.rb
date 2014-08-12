class AddDestinationIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :destination_id, :integer
  end
end

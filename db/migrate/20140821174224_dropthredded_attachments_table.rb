class DropthreddedAttachmentsTable < ActiveRecord::Migration
  	def up
    	remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_page"
  		remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_post_id"
  		remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_posts_count"
  		remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_topic_id"
  		remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_user_id_and_topic_id"
  		remove_index :thredded_user_topic_reads, name: "index_thredded_user_topic_reads_on_user_id"
  		remove_index :thredded_user_preferences, name: "index_thredded_user_preferences_on_user_id"
		remove_index :thredded_user_details, name: "index_thredded_user_details_on_latest_activity_at"
 		remove_index :thredded_user_details, name: "index_thredded_user_details_on_user_id"
 		remove_index :thredded_topics, name: "index_thredded_topics_on_hash_id"
 		remove_index :thredded_topics, name: "index_thredded_topics_on_last_user_id"
  		remove_index :thredded_topics, name: "index_thredded_topics_on_messageboard_id"
  		remove_index :thredded_topics, name: "index_thredded_topics_on_user_id"
 		remove_index :thredded_topic_categories, name: "index_thredded_topic_categories_on_category_id"
  		remove_index :thredded_topic_categories, name: "index_thredded_topic_categories_on_topic_id"
		remove_index :thredded_roles, name: "index_thredded_roles_on_messageboard_id"
  		remove_index :thredded_roles, name: "index_thredded_roles_on_user_id"
		remove_index :thredded_private_users, name: "index_thredded_private_users_on_private_topic_id"
  		remove_index :thredded_private_users, name: "index_thredded_private_users_on_user_id"
		remove_index :thredded_posts, name: "index_thredded_posts_on_messageboard_id"
		remove_index :thredded_posts, name: "index_thredded_posts_on_topic_id"
		remove_index :thredded_posts, name: "index_thredded_posts_on_user_id"
		remove_index :thredded_post_notifications, name: "index_thredded_post_notifications_on_post_id"
		remove_index :thredded_messageboards, name: "index_thredded_messageboards_on_closed"
  		remove_index :thredded_messageboards, name: "index_thredded_messageboards_on_slug"
		remove_index :thredded_messageboard_preferences, name: "index_thredded_messageboard_preferences_on_messageboard_id"
  		remove_index :thredded_messageboard_preferences, name: "index_thredded_messageboard_preferences_on_user_id"
		remove_index :thredded_images, name: "index_thredded_images_on_post_id"
		remove_index :thredded_categories, name: "index_thredded_categories_on_messageboard_id"

    	
    	drop_table :thredded_categories
    	drop_table :thredded_messageboard_preferences
    	drop_table :thredded_messageboards
    	drop_table :thredded_posts
    	drop_table :thredded_private_users
    	drop_table :thredded_roles
    	drop_table :thredded_topic_categories
    	drop_table :thredded_topics
    	drop_table :thredded_user_details
    	drop_table :thredded_user_preferences
    	drop_table :thredded_user_topic_reads

  	end

  	def down
    	#raise ActiveRecord::IrreversibleMigration
  	end
end

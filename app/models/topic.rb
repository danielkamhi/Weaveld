class Topic < ActiveRecord::Base
	belongs_to :destination
	belongs_to :user
	belongs_to :city
	has_many :comments

	

end

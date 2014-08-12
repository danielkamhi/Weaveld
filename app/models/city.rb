class City < ActiveRecord::Base
	has_many :destinations 
	has_many :users
	has_many :topics, :through => :destinations
end

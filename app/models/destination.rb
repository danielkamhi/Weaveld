class Destination < ActiveRecord::Base
	has_many :user_destinations
	has_many :users, :through => :user_destinations
	has_many :topics

  scope :family, -> {where(family_trip: true)}
  scope :adventure, -> {where(adventure: true)} 
  scope :culture, -> {where(culture: true)} 
  scope :foodie, -> {where(foodie: true)} 
  scope :performances, -> {where(performances: true)}

 
end

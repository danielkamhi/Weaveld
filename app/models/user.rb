class User < ActiveRecord::Base


  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "50x50>", :small => "50x50>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :user_destinations
	has_many :destinations, :through => :user_destinations
	has_many :topics
	has_many :comments

  scope :family, -> {where(family_trip: true)}
  scope :adventure, -> {where(adventure: true)} 
  scope :culture, -> {where(culture: true)} 
  scope :foodie, -> {where(foodie: true)} 
  scope :performances, -> {where(performances: true)}

  #List all travelers 3 weeks before arrival

  # scope :travbuddy, -> {where(arrival: (self.arrival - 3.weeks )..self.arrival)}

  def travbuddy
     User.where(departure: (self.departure - 3.weeks)..self.departure + 3.weeks) 
  end 
  
  def dest
 	 	dest = Destination.all
 	 	dest = dest.foodie if self.foodie == true
 		dest = dest.family if self.family_trip == true
  	dest = dest.adventure if self.adventure == true
		dest = dest.culture if self.culture == true
		dest = dest.performances if self.performances == true
		dest
 	end
end

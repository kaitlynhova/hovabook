class Gig < ActiveRecord::Base
  attr_accessible :date,:image, :instructions, :location, :payment, :payment_schedule, :songs, :UserId
  belongs_to :user
  mount_uploader :image, GigphotoUploader 
end

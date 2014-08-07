class Gig < ActiveRecord::Base
  attr_accessible :address,:date,:image,:song_selection, :description ,:information, :instructions, :title,:location, :payment, :payment_schedule, :songs, :UserId, :clientphoto, :clientname, :clientphone, :clientemail
  belongs_to :user
  mount_uploader :image, GigphotoUploader 
  mount_uploader :clientphoto, GigphotoUploader 
end

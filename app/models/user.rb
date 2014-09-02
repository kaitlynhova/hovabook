class User < ActiveRecord::Base
  attr_accessible :about, :lname,:userphoto, :coverphoto,:songOne, :fname, :username,:address, :email, :name, :phone, :password, :password_confirmation
  has_secure_password
  

  
  extend FriendlyId
  friendly_id :username
  
  has_many :gigs
  mount_uploader :userphoto, UserphotoUploader 
  mount_uploader :coverphoto, UserphotoUploader 

  validates_presence_of :password, :on => :create
end


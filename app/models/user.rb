class User < ActiveRecord::Base
  attr_accessible :about, :lname, :fname, :username,:address, :email, :name, :phone, :password, :password_confirmation
  has_secure_password
  has_many :gigs
  validates_presence_of :password, :on => :create
end


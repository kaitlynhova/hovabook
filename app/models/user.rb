class User < ActiveRecord::Base
  attr_accessible :about, :address, :email, :name, :phone
end

class Client < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone
end

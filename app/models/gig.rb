class Gig < ActiveRecord::Base
  attr_accessible :date, :instructions, :location, :payment, :payment_schedule, :songs
end

class Instrument < ActiveRecord::Base
  attr_accessible :type, :user_id, :name
end

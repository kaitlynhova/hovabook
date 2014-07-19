class AddUserIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :UserId, :integer
  end
end

class AddClientaddressToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :clientaddress, :string
  end
end

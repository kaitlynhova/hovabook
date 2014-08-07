class AddAddressToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :address, :string
  end
end

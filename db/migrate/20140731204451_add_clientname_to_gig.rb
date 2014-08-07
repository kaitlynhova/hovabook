class AddClientnameToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :clientname, :string
  end
end

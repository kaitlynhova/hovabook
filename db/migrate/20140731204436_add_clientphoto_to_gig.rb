class AddClientphotoToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :clientphoto, :string
  end
end

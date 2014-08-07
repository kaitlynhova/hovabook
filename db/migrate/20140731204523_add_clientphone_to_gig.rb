class AddClientphoneToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :clientphone, :string
  end
end

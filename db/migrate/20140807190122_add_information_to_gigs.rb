class AddInformationToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :information, :string
  end
end

class AddImageToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :image, :string
  end
end

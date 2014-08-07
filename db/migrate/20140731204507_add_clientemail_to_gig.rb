class AddClientemailToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :clientemail, :string
  end
end

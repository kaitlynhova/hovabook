class AddSongOneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :songOne, :string
  end
end

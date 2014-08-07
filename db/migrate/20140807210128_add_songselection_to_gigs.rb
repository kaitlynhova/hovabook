class AddSongselectionToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :song_selection, :text
  end
end

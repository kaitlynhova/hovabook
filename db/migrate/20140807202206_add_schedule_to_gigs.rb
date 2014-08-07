class AddScheduleToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :schedule, :string
  end
end

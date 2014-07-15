class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.datetime :date
      t.string :location
      t.string :songs
      t.string :instructions
      t.decimal :payment
      t.string :payment_schedule

      t.timestamps
    end
  end
end

class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.integer :user_id
      t.string :type

      t.timestamps
    end
  end
end

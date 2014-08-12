class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :gig_id
      t.text :descritpion
      t.boolean :done

      t.timestamps
    end
  end
end

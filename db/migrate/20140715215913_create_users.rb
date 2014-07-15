class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :about
      t.string :email

      t.timestamps
    end
  end
end

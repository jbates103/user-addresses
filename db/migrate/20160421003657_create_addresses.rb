class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :type, default: 0
      t.integer :current, default: 0
      t.belongs_to :user, index: true 

      t.timestamps null: false
    end
  end
end

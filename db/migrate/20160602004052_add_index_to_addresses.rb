class AddIndexToAddresses < ActiveRecord::Migration
  def change
  	add_index :addresses, [:street_1, :zip_code, :type_address, :current, :user_id], unique: true, name: 'unqiue_address_idx'
  end
end

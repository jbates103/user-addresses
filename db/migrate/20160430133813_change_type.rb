class ChangeType < ActiveRecord::Migration
  def change
  	rename_column :addresses, :type, :type_address
  end
end

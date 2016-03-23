class RemoveIpAddressFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :ip_address
  end
end

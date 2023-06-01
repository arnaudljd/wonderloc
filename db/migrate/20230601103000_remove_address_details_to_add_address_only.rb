class RemoveAddressDetailsToAddAddressOnly < ActiveRecord::Migration[7.0]
  def change
    add_column :monuments, :address, :string
    remove_column :monuments, :country, :string
    remove_column :monuments, :city, :string
    remove_column :monuments, :address_details, :string
  end
end

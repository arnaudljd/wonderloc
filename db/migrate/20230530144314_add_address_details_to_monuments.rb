class AddAddressDetailsToMonuments < ActiveRecord::Migration[7.0]
  def change
    add_column :monuments, :address_details, :string
  end
end

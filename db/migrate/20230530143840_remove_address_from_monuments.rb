class RemoveAddressFromMonuments < ActiveRecord::Migration[7.0]
  def change
    remove_column :monuments, :address, :string
  end
end

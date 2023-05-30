class AddCountryToMonuments < ActiveRecord::Migration[7.0]
  def change
    add_column :monuments, :country, :string
  end
end

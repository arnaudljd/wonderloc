class AddCityToMonuments < ActiveRecord::Migration[7.0]
  def change
    add_column :monuments, :city, :string
  end
end

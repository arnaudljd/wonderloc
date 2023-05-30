class AddRateToMonument < ActiveRecord::Migration[7.0]
  def change
    add_column :monuments, :rate, :integer
  end
end

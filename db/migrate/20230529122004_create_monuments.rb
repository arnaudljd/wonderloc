class CreateMonuments < ActiveRecord::Migration[7.0]
  def change
    create_table :monuments do |t|
      t.string :name
      t.string :picture
      t.integer :price
      t.text :description
      t.string :address
      t.date :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

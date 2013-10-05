class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :streetAddress2
      t.string :city
      t.string :postalCode
      t.string :state
      t.string :phoneNumber
      t.float :lng
      t.string :country
      t.string :neighborhood
      t.string :name
      t.string :streetAddress1
      t.integer :id
      t.float :lat

      t.timestamps
    end
  end
end

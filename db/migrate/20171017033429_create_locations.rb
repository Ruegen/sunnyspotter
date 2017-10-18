class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.string :city
      t.string :postcode
      t.string :country

      # this gets filled by geocoder
      t.decimal :longitude, precision: 10, scale: 6
      t.decimal :latitude, precision: 10, scale: 6

      t.timestamps
    end
  end
end

class CreateTrims < ActiveRecord::Migration
  def change
    create_table :trims, id: false do |t|
      t.primary_key :id
      t.references :model, index: true
      t.text :description
      t.string :msrp
      t.string :invoice
      t.string :engine
      t.string :transmission
      t.string :num_of_doors
      t.string :mpg_city
      t.string :mpg_hwy
      t.string :crappy_image
      t.string :default_matched_image
      t.timestamp :created_at
      t.timestamp :updated_at
      t.string :combined_fuel_economy
    end
  end
end

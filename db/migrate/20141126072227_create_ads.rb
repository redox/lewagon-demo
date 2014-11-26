class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.string :location
      t.float :location_lat
      t.float :location_lng
      t.text :description
      t.integer :price
      t.string :room_type
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.integer :bad_count
      t.string :property_type
      t.string :host_languages
      t.timestamps
    end
  end
end

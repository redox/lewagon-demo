class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :ad_id
      t.string :content
      t.timestamps
    end
  end
end

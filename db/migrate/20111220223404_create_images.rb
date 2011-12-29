class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :hotel_id
      t.string :name
      t.string :caption
      t.string :url
      t.string :supplier
      t.integer :width
      t.integer :height
      t.integer :bytesize
      t.string :thumbnail_url
      t.string :default_image

      t.timestamps
    end
  end
end

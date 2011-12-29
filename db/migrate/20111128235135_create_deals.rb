class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.string :zipcode
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :valid_dates
      t.decimal :from_price
      t.decimal :to_price
      t.string :price_qualification_code
      t.string :airport_id
      t.string :encoded_id
      t.date   :expiration_date
      t.date   :go_live_date
      t.string :image_url
      t.string :url
      t.text   :details
      t.string :supplier_name
      
      t.timestamps
    end
  end
end

# data.each do |item|
#   deal = Deal.new(:title => item["title"])
#   item["images"].each do |image|
#     deal.images << DealImage.new(:url => image["url"])
#   end
#   deal.save
# end
# 
# active record will populate the deal id into the image table by setting the relationship in the model view.

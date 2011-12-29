class DealsThemes < ActiveRecord::Migration
  def change
    create_table :deals_themes, :id => false do |t|
      t.integer :deal_id
      t.integer :theme_id
    end
  end
end

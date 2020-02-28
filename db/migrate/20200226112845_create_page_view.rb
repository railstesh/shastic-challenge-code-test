class CreatePageView < ActiveRecord::Migration[6.0]
  def change
    create_table :page_views do |t|
      t.string :title
      t.integer :position
      t.text :url
      t.string :time_spent
      t.references :visit, index: true
      t.decimal :timestamp, precision: 14, scale: 3
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end

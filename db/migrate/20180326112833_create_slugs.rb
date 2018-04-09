class CreateSlugs < ActiveRecord::Migration[5.1]
  def change
    create_table :slugs do |t|
      t.string :Company
      t.string :Logo
      t.string :Duration
      t.string :Category
      t.string :Image
      t.string :Title
      t.text :Details
      t.datetime :Starts
      t.datetime :Expires
      t.string :Website
      t.integer :Views
      t.integer :Rating

      t.timestamps
    end
  end
end

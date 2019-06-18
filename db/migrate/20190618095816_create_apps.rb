class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :image
      t.text :description
      t.float :rating
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end

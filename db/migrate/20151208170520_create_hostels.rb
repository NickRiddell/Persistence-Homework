class CreateHostels < ActiveRecord::Migration
  def change
    create_table :hostels do |t|
      t.string :name
      t.text :image
      t.string :country
      t.string :city
      t.date :visited
      t.integer :rating

      t.timestamps null: false
    end
  end
end

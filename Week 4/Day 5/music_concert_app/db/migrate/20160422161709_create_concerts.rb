class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.text :artist
      t.text :city
      t.text :venue
      t.text :description
      t.datetime :date
      t.decimal :price

      t.timestamps null: false
    end
  end
end

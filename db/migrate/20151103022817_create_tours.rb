class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :image
      t.integer :duration
      t.string :language

      t.timestamps null: false
    end
  end
end

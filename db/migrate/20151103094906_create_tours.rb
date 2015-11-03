class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.string :language
      t.integer :duration
      t.integer :price
      t.string :image

      t.timestamps null: false
    end
  end
end

class CreateHideouts < ActiveRecord::Migration[5.2]
  def change
    create_table :hideouts do |t|
      t.text :name
      t.text :description
      t.text :address
      t.integer :price
      t.integer :capacity
      t.integer :safety

      t.timestamps
    end
  end
end

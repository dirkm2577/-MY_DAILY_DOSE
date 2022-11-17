class CreateSupplements < ActiveRecord::Migration[7.0]
  def change
    create_table :supplements do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :quantity
      t.integer :frequency
      t.string :unit_measure
      t.string :images
      t.string :category

      t.timestamps
    end
  end
end

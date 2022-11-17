class CreateUserSupplements < ActiveRecord::Migration[7.0]
  def change
    create_table :user_supplements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :supplement, null: false, foreign_key: true

      t.timestamps
    end
  end
end

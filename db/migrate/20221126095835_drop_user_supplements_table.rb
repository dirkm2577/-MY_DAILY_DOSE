class DropUserSupplementsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_supplements
  end
  add_reference :reviews, :user
end

class ChangeRemainingToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :supplements, :remaining, :integer, using: 'remaining::integer'
  end
end

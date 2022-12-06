class UpdateToSupplementsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :supplements, :frequency, :string
    change_table :supplements do |t|
      t.rename :unit_measure, :remaining
    end
  end
end

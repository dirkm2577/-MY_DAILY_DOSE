class ChangeReviewReferencesToSupplements < ActiveRecord::Migration[7.0]
  def change
    change_table :reviews do |t|
      t.remove :user_supplement_id
    end  
    add_reference :reviews, :supplement
  end
end

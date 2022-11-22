class ChangeImagesColumnToPhotos < ActiveRecord::Migration[7.0]
  def change
    change_table :supplements do |t|
      t.rename :images, :photos
    end
  end
end

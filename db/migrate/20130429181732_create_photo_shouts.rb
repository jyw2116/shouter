class CreatePhotoShouts < ActiveRecord::Migration
  def change
    create_table :photo_shouts do |t|
      t.attachment :photo

      t.timestamps
    end
  end
end

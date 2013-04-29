class AddContentToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer
  end
end

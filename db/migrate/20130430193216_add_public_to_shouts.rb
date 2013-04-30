class AddPublicToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :public, :boolean, default: :true
  end
end

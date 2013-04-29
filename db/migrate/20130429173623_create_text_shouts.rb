class CreateTextShouts < ActiveRecord::Migration
  def up
    create_table :text_shouts do |t|
      t.string :body, null: false
    end
    remove_column :shouts, :body
  end

  def down
  	add_column :shouts, :body, :string, null: false
  	drop_table :text_shouts
  end
end

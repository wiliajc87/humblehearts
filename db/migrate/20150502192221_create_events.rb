class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :frequency
      t.string :description
      t.string :album_link
      t.timestamps :null => false
    end
  end
end


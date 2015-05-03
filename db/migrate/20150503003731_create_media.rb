class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :link
      t.string :category, null: false
      t.timestamps null: false
    end
  end
end
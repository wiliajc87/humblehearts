class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :phone
      t.string :url
      t.string :address
      t.string :category

      t.timestamps null: false
    end
  end
end

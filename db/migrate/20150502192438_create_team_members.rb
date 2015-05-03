class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :title
      t.string :photo_url
      t.text   :bio

      t.timestamps null: false
    end
  end
end

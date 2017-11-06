class CreateHackathons < ActiveRecord::Migration[5.1]
  def change
    create_table :hackathons do |t|
      t.text :avatar_data
      t.string :name
      t.text :description
      t.decimal :reward
      t.integer :max_team_count
      t.datetime :date_end
      t.string :team_name1
      t.string :team_name2
      t.string :team_name3

      t.timestamps
    end
  end
end

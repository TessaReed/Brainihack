class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.references :profile, foreign_key: true
      t.references :team, foreign_key: true
      t.timestamps
    end
  end
end

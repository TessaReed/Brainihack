class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.string :role_name
      t.binary :profile_id
      t.binary :team_id
      t.integer :hackathons_id

      t.timestamps
    end
  end
end

class AddHackathonIdToTeams < ActiveRecord::Migration[5.1]
  def change
    add_reference :teams, :hackathon, foreign_key: true
    # Fix since accidently added plural for the foreign key
    remove_reference :teams, :hackathons, foreign_key: true
  end
end

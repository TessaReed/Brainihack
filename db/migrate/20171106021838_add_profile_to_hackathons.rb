class AddProfileToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_reference :hackathons, :profile, foreign_key: true
  end
end

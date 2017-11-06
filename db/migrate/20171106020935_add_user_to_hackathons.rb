class AddUserToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_reference :hackathons, :user, foreign_key: true
  end
end

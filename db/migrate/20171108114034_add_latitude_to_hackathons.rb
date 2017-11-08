class AddLatitudeToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :latitude, :float
  end
end

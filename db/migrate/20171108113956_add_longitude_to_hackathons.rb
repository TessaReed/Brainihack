class AddLongitudeToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :longitude, :float
  end
end

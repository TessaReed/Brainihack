class AddAddressToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :address, :string
  end
end

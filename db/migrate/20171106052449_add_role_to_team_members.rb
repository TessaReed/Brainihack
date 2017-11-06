class AddRoleToTeamMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :team_members, :role, :string
  end
end

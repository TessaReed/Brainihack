class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :hackathon_id
      t.text :file
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

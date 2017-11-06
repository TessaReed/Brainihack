class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :hackathons, foreign_key: true
      t.text :file
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

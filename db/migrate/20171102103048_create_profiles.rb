class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.text :avatar_data
      t.text :description
      t.string :profession
      t.integer :user_id

      t.timestamps
    end
  end
end

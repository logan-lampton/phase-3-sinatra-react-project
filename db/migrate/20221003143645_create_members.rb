class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :character_name
      t.string :player_name
      t.string :class_name
      t.string :race
      t.integer :level
      t.string :alignment
      t.integer :party_id
    end
  end
end

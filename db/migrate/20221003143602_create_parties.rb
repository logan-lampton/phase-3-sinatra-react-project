class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :campaign
      t.string :DM
      t.string :description
      t.integer :user_id
    end
  end
end

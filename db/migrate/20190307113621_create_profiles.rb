class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :avatar
      t.string :background
      t.integer :user_id
      t.string :name
      t.string :place
      t.string :website
      t.string :bio

      t.timestamps
    end
  end
end

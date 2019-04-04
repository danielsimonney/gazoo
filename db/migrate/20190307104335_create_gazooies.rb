class CreateGazooies < ActiveRecord::Migration[5.2]
  def change
    create_table :gazooies do |t|
      t.integer :user_id
      t.string :text
      t.integer :reply_to_id

      t.timestamps
    end
  end
end

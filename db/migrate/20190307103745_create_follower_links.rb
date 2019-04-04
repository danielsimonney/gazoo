class CreateFollowerLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :follower_links do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end

class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

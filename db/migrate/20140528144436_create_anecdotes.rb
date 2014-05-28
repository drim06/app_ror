class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.string :content
      t.integer :user_id
      t.string :theme

      t.timestamps
    end
    add_index :anecdotes, [:user_id, :created_at]
  end
end

class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :title
      t.string :scene
      t.string :anecdote

      t.timestamps
    end
  end
end

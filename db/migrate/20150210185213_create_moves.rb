class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :mark
      t.integer :position
      t.integer :game_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

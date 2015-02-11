class AddPlayer2MarkToGames < ActiveRecord::Migration
  def change
    add_column :games, :player2_mark, :string
  end
end

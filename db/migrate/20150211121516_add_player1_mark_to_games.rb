class AddPlayer1MarkToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1_mark, :string
  end
end

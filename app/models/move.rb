class Move < ActiveRecord::Base
  attr_accessor :player1
  belongs_to :user
  belongs_to :game

  def self.find_mark(game_id)
   game = Game.find(game_id)
    if game.moves.present?
      if game.moves.last.mark == "x"
        "o"
      else
        "x"
      end
    else
      "x"
    end
  end

  def self.computer_move(game_id)
    game = Game.find(game_id)
    positions_taken = game.moves.map { |move| move.position }
    board = (0..8).to_a
    available = board - positions_taken
    available.sample
  end





      
    
   
 
end

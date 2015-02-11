class Move < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :game

  @player1 = []
  @player2 = []
  
  def board_update(position, mark)
    @board[position] << mark
  end

  # def comp_choice
  #   until @board.sample == ''
  #     @board.sample
  #   else
  #     @board
  #   end
  # end
end

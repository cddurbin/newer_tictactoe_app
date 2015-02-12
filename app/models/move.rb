class Move < ActiveRecord::Base
  attr_accessor :player1
  belongs_to :user
  belongs_to :game

  # def self.player_check(player2_id)
  #   if player2_id == 'comp@cpu.com'


  def self.update_board_move(board, position, mark)
    board[position] = mark
    board
  end

  def self.update_player_choice(player_choices, position)
    player_choices << position
  end

  

  # def self.update_board_all(board, position, mark)
  #   board[position] << mark
  #   board
  # end

  # def self.player_choice(position)
  #   @player1[] << position
  # end

  # def self.player_marks
  #   if self.player1_mark == 'x'
  #     self.player2_mark == 'o'
  #   else
  #     self.player2_mark == 'x'
  #   end
  # end

  # def comp_choice
  #   until @board.sample == ''
  #     @board.sample
  #   else
  #     @board
  #   end
  # end
end

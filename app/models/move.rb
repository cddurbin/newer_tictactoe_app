class Move < ActiveRecord::Base
  attr_accessor :player1
  belongs_to :user
  belongs_to :game

  @player1 = Array.new
  @player2 = Array.new

  def self.board_update(position, mark)
    @board[position] << mark

  end

  def self.player_choice(position)
    @player1[] << position
  end

  def self.player_marks
    if self.player1_mark == 'x'
      self.player2_mark == 'o'
    else
      self.player2_mark == 'x'
    end
  end

  # def comp_choice
  #   until @board.sample == ''
  #     @board.sample
  #   else
  #     @board
  #   end
  # end
end

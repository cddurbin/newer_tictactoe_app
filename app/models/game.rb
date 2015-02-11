class Game < ActiveRecord::Base
  attr_accessor :current_user
  has_many :moves
  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
#setup initial game

    @player1 = []
    @player2 = []
    @board = ['','','','','','','','','']
    #win combinations
    @wins = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]]

  def player_marks
    if self.player1_mark == 'x'
      self.player2_mark == 'o'
    else
      self.player2_mark == 'x'
    end
  end
  
  def plays_first
    plays_first = ['x', 'o'].sample
    if self.player1_mark == plays_first
      player1_turn
    else
      player2_turn
    end
  end

  def nextplayer
    if @player1.length > @player2.length
    end

  end
  

  def remove_from_board(player_choice)
    @board.fresh -= [player_choice]
  end

  def player1_choice(player_choice)
    @player1.push(player_choice)
  end

  def player2_choice(player_choice)
    @player2.push(player_choice)
  end

  # def change_turns
  #   if self.player1_id







  #computer opponent sequence
  

  #guest opponent sequence





  
 




end

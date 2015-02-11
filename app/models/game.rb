class Game < ActiveRecord::Base
  attr_accessor :current_user
  has_many :moves
  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'

  # def start
  #   @board = Board.new
  # end


  # def player2_assignment(player2)
  #   self.player2_id = player2
  # end





end

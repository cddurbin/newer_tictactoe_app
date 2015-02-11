class Game < ActiveRecord::Base
  attr_accessor :current_user
  has_many :moves
  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'

  def start
    @board = Board.new
  end

  def plays_first

  end

  


  
 




end

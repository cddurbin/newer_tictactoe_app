class Game < ActiveRecord::Base

  has_many :moves
  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'

  def start
    Board.new
  end

end

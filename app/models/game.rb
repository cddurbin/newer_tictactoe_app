class Game < ActiveRecord::Base
  attr_accessor :current_user
  has_many :moves
  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
#setup initial game

    
    #win combinations
  def self.check_win_combos(player_choice_array)
    wins = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]]
    wins.each do |win|
      # if (player_choice_array & win).length == win.length
    end

  end

  
end










  
 





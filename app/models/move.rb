class Move < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :game


  # def mark_assignment
  #   mark = ['x', 'o'].sample
  #   self.game.player1.mark = 
  # end

end

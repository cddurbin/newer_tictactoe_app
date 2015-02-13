class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    
    if @game.save
      redirect_to game_path(@game)
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
    @board = Board.new
    @move = Move.new

    #build board moves
    @game.moves.each do |move|
      @board.grid[move.position] = move.mark
    end
    #gather x positions
    noughts = Game.gather_noughts(params[:id])
    crosses = Game.gather_crosses(params[:id])
    #check for win
    if Game.check_win_combos(noughts, crosses)
      @winner =  "Win!"
      @game.completed = true
      @game.winner = @game.moves.last.user.email
    end
    #check for draw but right now only all spaces
    if Game.check_draw(noughts, crosses)
      @draw = "Boo...Cat's Game"
      @game.winner = 'draw'
    end



    

    


  end

  private
  def game_params
    params.require(:game).permit(:winner, :completed, :player1_id, :player2_id, :player1_mark, :player2_mark)
  end

end
class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @board = ['','','','','','','','','']
    if @game.save
      redirect_to game_path(@game)
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
    @move = Move.new
  end

  def update
  end

  private
  def game_params
    params.require(:game).permit(:winner, :completed, :player1_id, :player2_id, :player1_mark, :player2_mark)
  end

end
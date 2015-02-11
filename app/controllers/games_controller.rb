class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @board = Board.new

    if @game.save
      redirect_to game_path(@game)
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private
  def game_params
    params.require(:game).permit(:winner, :completed, :player1_id, :player2_id)
  end

end
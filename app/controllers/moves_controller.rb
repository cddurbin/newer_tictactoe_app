class MovesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @move = Move.new
  end

  def create
    @move = Move.new(move_params)
    @move.mark = Move.find_mark(params[:game_id])
    @game = Game.find(params[:game_id])

    # if @game.player2_id == 3
    #   @comp_move = Move.new(mark: mark, position: Move.computer_move(params[:game_id]), user_id: 3)
    # else
    #   @move = Move.new(move_params)
    # end

    if @move.save
      redirect_to game_path(@move.game_id)
    else
      flash.alert = 'Oops...Try again!'
    end
  end

  def show
    @game = Game.find(@move.game_id)
    @move = Move.new
  end

  def update
  end


  private
  def move_params
    params.require(:move).permit(:mark, :position, :game_id, :user_id)
  end

end
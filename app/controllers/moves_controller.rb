class MovesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @move = Move.new
  end

  def create
    @move = Move.create(move_params)
    # @move.player_choice(params[:position])
    @move.board_update(params[:position], params[:mark])

    # @move.player_choice(params[:position])

    if @move.save
      redirect_to game_path(@move.game_id)
    else
      puts 'Try again'
    end
  end

  def update
  end


  private
  def move_params
    params.require(:move).permit(:mark, :position, :game_id, :user_id)
  end

end
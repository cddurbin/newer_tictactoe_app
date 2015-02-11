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
    @move = Move.new(move_params)

  end

  def update
  end


  private
  def move_params
    params.require(:move).permit(:mark, :position, :game_id, :user_id)
  end

end
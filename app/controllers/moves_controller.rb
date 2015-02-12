class MovesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @move = Move.new
  end

  def create
    binding.pry
    @move = Move.new(move_params)
    @move.mark = Move.find_mark(params[:game_id])
    

    
    if @move.save
      redirect_to game_path(@move.game_id)
    else
      puts 'Try again'
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
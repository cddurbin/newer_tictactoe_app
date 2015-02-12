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
    board = Board.new

    board = Move.update_board_move(board.grid, move_params[:position].to_i, move_params[:mark])

    game = Game.find(@move.game_id)
    game.moves.each do |move|
      board[move.position] = move.mark
      board
    end

    binding.pry


    

    

    

    

     

    

    # @move.player_choice(params[:position])
    

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
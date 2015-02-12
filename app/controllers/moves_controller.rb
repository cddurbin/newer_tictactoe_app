class MovesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def new
    @move = Move.new
  end

  def create
    @move = Move.new(move_params)
    game = Game.find(move_params[:game_id])
    board = Board.new
    # player1 = current_user 
    # player1_choices = Array.new
    # comp_choices = Array.new

    # player1_choices = Move.update_player_choice(player1_choices, move_params[:position])

    board = Move.update_board_move(board.grid, move_params[:position].to_i, move_params[:mark])
    
    game.moves.each do |move|
      board[move.position] = move.mark
      board
    end

    @board = board
    
    if @move.save
      redirect_to game_move_path(@move)
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
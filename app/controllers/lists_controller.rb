class ListsController < ApplicationController
  before_action :authenticate_user!

  def new
    @list = board.lists.new
  end

  def edit
    @list = board.lists.find(params[:id])
  end

  def create
    @list = board.lists.new(list_params)

    if @list.save
      redirect_to board_path(board), notice: "List was successfully created."
    else
      render :new
    end
  end

  def update
    @list = board.lists.find(params[:id])

    if @list.update(list_params)
      redirect_to board_path(board), notice: "List was successfully updated."
    else
      render :edit
    end
  end

  private

  def board
    @board ||= Board.find(params[:board_id])
  end

  def list_params
    params.require(:list).permit(:title)
  end
end

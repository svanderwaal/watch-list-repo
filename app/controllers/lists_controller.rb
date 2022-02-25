class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit]

  def index
    @title = 'Lists'
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: 'List was successfully created/edited.'
    else
      render :new
    end
  end

  # def update
  # end

  # def edit
  #   # @list = List.find(params[:id])
  # end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name)
  end

end

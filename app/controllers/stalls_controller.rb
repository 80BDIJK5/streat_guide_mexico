class StallsController < ApplicationController
  before_action :set_stall, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR description ILIKE '%#{:query}%' "
      @stalls = Stall.where(sql_query, query: "%#{params[:query]}%")
    else
      @stalls = Stall.all
    end
  end

  def show
  end

  def new
    @stall = Stall.new
  end

  def create
    @stall = Stall.new(stall_params)
    @stall.user = current_user
    if @stall.save
      redirect_to stall_path(@stall)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @stall.update(stall_params)
    redirect_to stall_path(@stall) #optional
  end

  def destroy
    @stall.destroy
    redirect_to stalls_path
  end

  private

  def stall_params
    params.require(:stalls).permit(:name, :category, :description, :rating, :address, photos:[])
  end

  def set_stall
    @stall = Stall.find(params[:id])
  end
end

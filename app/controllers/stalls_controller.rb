class StallsController < ApplicationController
  before_action :set_stall, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @stalls = Stall.search_by_name_and_description(params[:query])
    else
      @stalls = Stall.all
    end
  end

  def index
    @stalls = Stall.all
    @markers = @stalls.geocoded.map do |place|
    {
      lat: place.latitude,
      lng: place.longitude,
      info_window: render_to_string(partial: "info_window", locals: { stall: place })
    }
  end

  end

  def show
    @review = Review.new

    @markers = [
    {
      lat: @stall.latitude,
      lng: @stall.longitude,
      info_window: render_to_string(partial: "info_window", locals: { stall: @stall })
    }]
  end

  def new
    @stall = Stall.new
  end

  def create
    @stall = Stall.new(stall_params)
    @stall.user = current_user
    if @stall.save
      flash[:alert] = "Created succesfully"
      redirect_to stall_path(@stall)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @stall.update(stall_params)
    redirect_to stall_path(@stall) # Optional
  end

  def destroy
    @stall.destroy
    redirect_to stalls_path
  end

  private

  def stall_params
    params.require(:stall).permit(:name, :category, :description, :rating, :address, services: [], photos: [])
  end

  def set_stall
    @stall = Stall.find(params[:id])
  end

end

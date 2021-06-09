class ReviewsController < ApplicationController

   def new
    @stall = Stall.find(params[:stall_id])
    @review = Review.new
  end

   def create
    @review = Review.new(review_params)
    @stall = Stall.find(params[:stall_id])
    @review.stall = @stall
    @review.user = current_user
    if @review.save
      redirect_to stall_path(@stall)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @stall = @review.stall
    @review.destroy
    redirect_to stall_path(@stall)
  end

  private

  def review_params
    params.require(:review).permit(:title, :comment, :rating)
  end

end

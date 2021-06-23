class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @reviews = Review.last(4)
  end
end

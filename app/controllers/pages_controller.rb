class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @stall = Stall.all.sample
  end

  def compTest
  end

  def bob
  end
end

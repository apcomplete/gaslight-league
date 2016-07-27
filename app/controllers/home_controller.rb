class HomeController < ApplicationController
  def index
    @teams = Team.all
    @categories = Category.all
  end
end

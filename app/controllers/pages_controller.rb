class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @pictures = Picture.all
  end
  def show
    @pictures = Picture.all
  end
  def index
    @pictures = Picture.all
  end
end
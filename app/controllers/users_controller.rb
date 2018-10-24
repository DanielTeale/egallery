class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @comment = Comment.new
    @comments = @user.comments.all
  end
  def index
    @user = User.find(params[:id])
    @comment = Comment.new
    @comments = @user.comments.all
  end

  def new
    @user = User.new(user_params)
  end
  

  def edit
    @user = User.find(params[:id])
  end

  def update
    
  end

  private

  def user_params
    params.permit(:image)
  end
end
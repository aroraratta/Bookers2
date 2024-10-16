class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
  end

  def edit
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
  
end
class UsersController < ApplicationController

  def index
    @users = User.all.page(params[:page]).per(10)
  end

  # def show
  #   @user = User.find(params[:id])
  #   @list = List.new
  #   if @user == current_user
  #     @list = @user.lists.include
  #   end
  # end
  
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pets = @user.pets.with_attached_pet_image
    @favorites = @user.favorites
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  def favorites
    @user = User.find(params[:user_id])
    @favorites = @user.favorites
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
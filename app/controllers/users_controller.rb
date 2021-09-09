class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pets = @user.pets.with_attached_pet_image
    @favorites = @user.favorites
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
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
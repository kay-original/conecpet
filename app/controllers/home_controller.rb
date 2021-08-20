class HomeController < ApplicationController
  def index
  end
  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com', name: 'ゲストユーザー') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to user_path(current_user), notice: 'ゲストユーザーとしてログインしました。'
  end
end

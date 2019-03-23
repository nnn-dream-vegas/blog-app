class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user = current_user.blogs.order(created_at: 'DESC')
  end
end

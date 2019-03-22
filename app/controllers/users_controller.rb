class UsersController < ApplicationController
  def show
    users = User.find(params[:id])
    @blogs = users
  end
end

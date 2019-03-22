class BlogController < ApplicationController
   before_action :move_to_index, expect: [:index]

  def index
    @blogs = Blog.all.order(created_at: "DESC") unless user_signed_in?
  end

  def new
  end

  def create
    Blog.create(blog_params)
  end

  private
  def blog_params
    params.permit(:image,:content).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to  new_user_session_path unless user_signed_in?

  end



end

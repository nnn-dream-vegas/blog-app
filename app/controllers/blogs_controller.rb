class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.order(created_at: "DESC")
  end

  def new
  end

  def create
    Blog.create(image:blog_params[:image],content:blog_params[:content],user_id:current_user.id)
  end

  def show
    @blog =Blog.find(params[:id])
  end


  def edit
  end

  def destroy
    blog = Blog.find(params[:id])
    if blog.user_id == current_user.id
      blog.destroy
      redirect_to action: :index
    end
  end


  private
  def blog_params
    params.permit(:image,:content,:user_id)
  end

end

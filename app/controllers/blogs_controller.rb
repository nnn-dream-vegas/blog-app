class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.order(created_at: "DESC")
  end

  def new
    @blog = Blog.new

  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
  end

  def show
    @blog =Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to root_path
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
    params.require(:blog).permit(:image,:content).merge(user_id: current_user.id)
  end

end

class BlogpostsController < ApplicationController
  def new
    @user = current_user
    @blogpost = Blogpost.new
  end

  def show
    @user = current_user
    @blogpost = Blogpost.find(params[:id])
  end

  def index
    @user = current_user
    @blogposts = current_user.blogposts
  end

  def create
    @user = current_user
    @blogpost = @user.blogposts.create(blogpost_params)
    if @blogpost.save
      redirect_to user_blogpost_path(@user, @blogpost)
    else
      render 'new'
    end
  end

  private

  def blogpost_params
    params.require(:blogpost).permit(:title)
  end
end

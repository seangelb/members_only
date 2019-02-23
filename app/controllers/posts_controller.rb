class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  
  def new
    @post = Post.new
  end
  
  def create
    Post.create(title: params[:post][:title], content: params[:post][:content], user_id: current_user.id)
    redirect_to '/posts'
  end
  
  def index
    @post = Post.all
  end
  
  private
  
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in to post"
      redirect_to login_url
    end
  end

end

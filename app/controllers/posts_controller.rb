class PostsController < ApplicationController
  def new
    @posts = posts.new
  end
  
  
end

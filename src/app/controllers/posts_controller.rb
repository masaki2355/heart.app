class PostsController < ApplicationController
  
  def index
    @users = User.all
    @posts = Post.all#postsテーブルの全データを取得する
  end
  
  def new
  end
  
  def create
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  
end

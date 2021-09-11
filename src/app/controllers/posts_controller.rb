class PostsController < ApplicationController
  
  def index
    @users = User.all
    @posts = Post.all#postsテーブルの全データを取得する
  end
  
  def new
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:content, :user_id))
      if @post.save
        flash[:notice] = "新規投稿をしました"
        redirect_to :users
      else
        render"posts"
      end
  end
  
  def show
    @user = User.find(params[:id])
    @post = Post.new
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  
end

class UsersController < ApplicationController

  def index
    @users = User.all#allメゾットはusersテーブルのレコードを全て取得できるメゾッド
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:schoolname, :email, :student, :password_digest))
      if @user.save
        flash[:notice] = "アカウントを新規登録しました"
        redirect_to :users
      else
        render"new"
      end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(params.require(:user).permit(:schoolname, :email, :student))
        flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
        redirect_to :user
      else
        render"edit"
      end
  end

  def destroy
  end


end

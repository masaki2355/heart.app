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
  end

  def update
  end

  def destroy
  end


end

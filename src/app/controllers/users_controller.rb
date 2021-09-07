class UsersController < ApplicationController
<<<<<<< HEAD
  def index
  end
=======

  def index
    @users = User.all
  end

  def new
    @user = User.new
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

>>>>>>> 2051b08 (ページ追加)
end

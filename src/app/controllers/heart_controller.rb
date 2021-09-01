class HeartController < ApplicationController
  def home
    @hello = "こんにちは"
    @messeage = "helloアクションが実行されています"
  end

  def call
    @call = "callアクションが実行されています"
  end
end

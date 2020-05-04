class TweetsController < ApplicationController

  def index
    # ツイートを最新順にソート
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
  end


  private
  # ストロングパラメーター
  # ストロングパラメーターとは、指定したキーを持つパラメーターのみを受け取るようにするものです。
  # もし仮に悪意のあるユーザーが、不正な情報を送信しようとしたときに、ストロングパラメーターを設定しておくと、不正な情報を受け取らずにすみます。
  def tweet_params
    params.permit(:name, :image, :text)
  end

end

class TweetsController < ApplicationController

   # 全てのアクションが実行される前に実行されるアクション
  before_action :move_to_index, except: :index

  def index
    # ツイートを最新順にソート
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end


  private
  # ストロングパラメーター
  # ストロングパラメーターとは、指定したキーを持つパラメーターのみを受け取るようにするものです。
  # もし仮に悪意のあるユーザーが、不正な情報を送信しようとしたときに、ストロングパラメーターを設定しておくと、不正な情報を受け取らずにすみます。
  def tweet_params
    params.permit(:name, :image, :text)
  end

  # 未ログインの場合、indexアクションを実行する
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

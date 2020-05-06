class EditUserIdColumnToTweets < ActiveRecord::Migration[5.2]
  def change
    change_column :tweets, :user_id, :reference, index: true, foreign_key: true, comment: "ユーザーID"
  end
end

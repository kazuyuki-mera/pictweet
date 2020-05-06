class ChangeTweetIdColumnToComment < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :tweet_id, :integer, index: true, foreign_key: true,  comment: "ツイートID"
  end
end

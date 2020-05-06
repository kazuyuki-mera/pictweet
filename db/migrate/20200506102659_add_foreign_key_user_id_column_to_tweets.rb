class AddForeignKeyUserIdColumnToTweets < ActiveRecord::Migration[5.2]
  def change
    change_column :tweets, :user_id, :integer, index: true, foreign_key: true
  end
end

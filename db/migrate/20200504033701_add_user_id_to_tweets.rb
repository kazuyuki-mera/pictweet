class AddUserIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :userId, :integer, after: :name
  end
end

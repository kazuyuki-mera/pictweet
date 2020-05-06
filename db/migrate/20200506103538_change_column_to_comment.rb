class ChangeColumnToComment < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_id, :integer, index: true, foreign_key: true,  comment: "ユーザーID"
  end
end

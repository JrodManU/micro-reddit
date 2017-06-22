class RenamePostsColumnUserIdIdToUserIdTakeTwo < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, {:to => :user_id}, :user_id
  end
end

class RenamePostsColumnUserIdIdToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :user_id_id, to: :user_id
  end
end

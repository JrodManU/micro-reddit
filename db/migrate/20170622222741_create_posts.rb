class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user_id, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :post, index: true, foreign_key: { to_table: :posts }

      t.timestamps
    end
  end
end

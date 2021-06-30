class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :author_id, null: false
      t.integer :blog_id, null: false
    end
    add_index :blogs, :author_id
    add_index :blogs, :blog_id
  end
end

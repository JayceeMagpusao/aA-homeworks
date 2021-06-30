class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :author_id, null: false
    end
    add_index :blogs, :author_id, unique: [:author_id, :title]
  end
end

class CreateBlogs < ActiveRecord::Migration[6.1]
  def up
    create_table :blogs do |t|
      t.integer "category_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false 

      t.timestamps
    end

    add_index("blogs", "category_id")
    add_index("blogs", "permalink")
  end

  def down
    drop_table :blogs
  end
end

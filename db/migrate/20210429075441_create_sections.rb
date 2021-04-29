class CreateSections < ActiveRecord::Migration[6.1]
  def up
    create_table :sections do |t|
      t.integer "blog_id"
      t.string "namd"
      t.integer "position"
      t.boolean "visible", :defuault => false
      t.string "content_type"
      t.text "content"

      t.timestamps
    end
    
    add_index("sections", "blog_id")
  end

  def down
    drop_table :sections
  end
end

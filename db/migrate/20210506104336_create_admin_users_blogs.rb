class CreateAdminUsersBlogs < ActiveRecord::Migration[6.1]
  def up
    create_table :admin_users_blogs do |t|
      t.integer "admin_user_id"
      t.integer "blog_id"

    end

    add_index("admin_users_blogs", ["admin_user_id", "blog_id"])
  end

  def down
    drop_table :admin_users_blogs
  end

end

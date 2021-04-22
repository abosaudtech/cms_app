class CreateAdmins < ActiveRecord::Migration[6.1]
  def up
    create_table :admins do |t|

      t.timestamps
    end
  end

  def down
    drop_table :admins
  end
end

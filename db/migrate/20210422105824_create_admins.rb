class CreateAdmins < ActiveRecord::Migration[6.1]
  def up
    create_table :admins do |t|
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false 
      t.string "password", :limit => 100
      
      # t.datetime "created_at"
      # t.datetime "updated_at"
      # we can dispense with the tow lines above with the line below:
      t.timestamps

      # binary - boolean - date - datetime - float - integer - string - text - time
      # :limit => size
      # :defult => value 
      # :null => true/false
      # :precisioin => number
      # :scale => number

    end
  end

  def down
    drop_table :admins
  end
end

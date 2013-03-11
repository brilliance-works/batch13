class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |u|
      u.string :first_name, :limit => 20, :null => false
      u.string :last_name
      u.integer :age, :default => 18
      u.boolean :active
    end
  end

  def down
    drop_table :users
  end
end

class AddColumnsToUsers < ActiveRecord::Migration
  def up
    rename_column(:users, :full_name, :first_name)
    add_column(:users, :last_name, :string)
    add_column(:users, :gender, :string)
    add_column(:users, :hobby1, :string)
    add_column(:users, :hobby2, :string)
    add_column(:users, :hobby3, :string)
    add_column(:users, :description, :text)
    add_column(:users, :email, :string)
    add_column(:users, :accept, :string)    
  end

  def down
    rename_column(:users, :first_name, :full_name)
    remove_column(:users, :last_name)
    remove_column(:users, :gender)
    remove_column(:users, :hobby1)
    remove_column(:users, :hobby2)
    remove_column(:users, :hobby3)
    remove_column(:users, :description)
    remove_column(:users, :email)
    remove_column(:users, :accept)
  end
end

class AddMoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :motto, :string
    add_column :users, :website, :string
    add_column :users, :avatar, :string
    add_column :users, :nickname, :string
    add_column :users, :studentno, :string
    add_column :users, :studentname, :string
  end
end

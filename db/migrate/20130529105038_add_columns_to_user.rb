class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :picture_url, :string
    add_column :users, :public_profile_url, :string
    add_column :users, :location, :string
  end
end

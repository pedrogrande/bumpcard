class AddColsToUser < ActiveRecord::Migration
  def change
    add_column :users, :summary, :text
    add_column :users, :industry, :string
    add_column :users, :headline, :string
  end
end

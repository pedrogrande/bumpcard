class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :url
      t.references :user

      t.timestamps
    end
    add_index :websites, :user_id
  end
end

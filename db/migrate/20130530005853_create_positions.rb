class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :company
      t.string :company_url
      t.references :user

      t.timestamps
    end
    add_index :positions, :user_id
  end
end

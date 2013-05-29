class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :user
      t.string :name
      t.string :number

      t.timestamps
    end
    add_index :phones, :user_id
  end
end

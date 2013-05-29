class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :user
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
    add_index :addresses, :user_id
  end
end

class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :background_image
      t.string :background_color
      t.string :logo
      t.string :text_color

      t.timestamps
    end
  end
end

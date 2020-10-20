class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.text :organiser
      t.text :coach
      t.text :image
      t.text :image
      t.integer :price
      t.text :contact
      t.integer :dropzone_id

      t.timestamps
    end
  end
end

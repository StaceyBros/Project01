  class CreateDropzones < ActiveRecord::Migration[5.2]
    def change
      create_table :dropzones do |t|
        t.text :state
        t.text :dz_name
        t.text :image

        t.timestamps
      end
    end
  end

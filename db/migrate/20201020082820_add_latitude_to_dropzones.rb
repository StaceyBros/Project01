  class AddLatitudeToDropzones < ActiveRecord::Migration[5.2]
    def change
      add_column :dropzones, :latitude, :decimal, { precision: 10, scale: 6 }
      add_column :dropzones, :longitude, :decimal, { precision: 10, scale: 6 }
    end
  end

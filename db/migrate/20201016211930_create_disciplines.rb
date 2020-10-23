  class CreateDisciplines < ActiveRecord::Migration[5.2]
    def change
      create_table :disciplines do |t|
        t.text :name

        t.timestamps
      end
    end
  end

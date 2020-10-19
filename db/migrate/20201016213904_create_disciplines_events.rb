class CreateDisciplinesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines_events, :id => false do |t|
      t.integer :discipline_id
      t.integer :event_id
    end
  end
end

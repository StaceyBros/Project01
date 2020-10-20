class AddDisciplineIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :discipline_id, :integer
  end
end

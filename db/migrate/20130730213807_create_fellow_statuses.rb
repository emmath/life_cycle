class CreateFellowStatuses < ActiveRecord::Migration
  def change
    create_table :fellow_statuses do |t|
      t.references :fellow_id
      t.references :status_id

      t.timestamps
    end
    add_index :fellow_statuses, :fellow_id_id
    add_index :fellow_statuses, :status_id_id
  end
end
